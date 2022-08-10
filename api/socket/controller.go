package socket

import (
	"errors"
	"log"

	"github.com/gin-gonic/gin"

	"tdp-cloud/core/serve"
	"tdp-cloud/core/webssh"
)

func agent(c *gin.Context) {

	key := c.Param("key")

	log.Println("agent - Connecting With Key: " + key)

	if key != "xxx" {
		c.AbortWithError(400, errors.New("授权失败"))
		return
	}

	serve.AgentFactory(c)

	log.Println("agent - Disconnected")

}

func ssh(c *gin.Context) {

	log.Println("webssh - Connecting")

	webssh.Handle(c)

	log.Println("webssh - Disconnected")

}
