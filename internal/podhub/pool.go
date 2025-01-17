package podhub

import (
	"github.com/gin-gonic/gin"

	"tdp-cloud/helper/psutil"
	"tdp-cloud/helper/socket"
)

type Worker struct {
	*socket.JsonPod
	UserId     uint
	HostId     string
	SystemStat *psutil.SystemStat
}

var NodePool = map[string]*Worker{}

func Upgrader(c *gin.Context) {

	pod, err := socket.NewJsonPod(c.Writer, c.Request)

	if err != nil {
		c.AbortWithError(500, err)
		return
	}

	defer pod.Close()

	// 注册节点

	hostId := c.Query("HostId")
	userId := c.GetUint("UserId")

	NodePool[hostId] = &Worker{
		pod, userId, hostId, &psutil.SystemStat{},
	}

	defer delete(NodePool, hostId)

	// 监听数据

	Receiver(NodePool[hostId])

}

func NodesOfUser(userId uint) *[]any {

	items := []any{}

	for _, v := range NodePool {
		if userId == v.UserId {
			items = append(items, map[string]any{
				"HostId":     v.HostId,
				"RemoteAddr": v.Conn.RemoteAddr().String(),
				"SystemStat": v.SystemStat,
			})
		}
	}

	return &items

}

func NewSender(hostId string) *SendPod {

	if node, ok := NodePool[hostId]; ok {
		return &SendPod{node}
	}

	return nil

}
