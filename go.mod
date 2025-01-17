module tdp-cloud

go 1.18

// WEB 框架

require (
	github.com/gin-gonic/gin v1.8.1
	github.com/gorilla/websocket v1.5.0
)

// 数据库 ORM

require (
	github.com/glebarez/sqlite v1.4.7
	gorm.io/driver/mysql v1.3.6
	gorm.io/gorm v1.23.9
)

// 其他依赖

require (
	// 生成 UUID
	github.com/google/uuid v1.3.0
	// Map 转结构体
	github.com/mitchellh/mapstructure v1.5.0
	// 计划任务
	github.com/robfig/cron/v3 v3.0.1
	// 系统信息采集
	github.com/shirou/gopsutil/v3 v3.22.8
	// 腾讯云 SDK
	github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/common v1.0.501
	// 加密扩充库
	golang.org/x/crypto v0.0.0-20220919173607-35f4265a4bc0
	// 终端和控制台支持包
	golang.org/x/term v0.0.0-20220919170432-7a66f970e087
	// 文本操作
	golang.org/x/text v0.3.7
)

// 间接依赖

require (
	github.com/gin-contrib/sse v0.1.0 // indirect
	github.com/glebarez/go-sqlite v1.18.2 // indirect
	github.com/go-ole/go-ole v1.2.6 // indirect
	github.com/go-playground/locales v0.14.0 // indirect
	github.com/go-playground/universal-translator v0.18.0 // indirect
	github.com/go-playground/validator/v10 v10.11.1 // indirect
	github.com/go-sql-driver/mysql v1.6.0 // indirect
	github.com/goccy/go-json v0.9.11 // indirect
	github.com/jinzhu/inflection v1.0.0 // indirect
	github.com/jinzhu/now v1.1.5 // indirect
	github.com/json-iterator/go v1.1.12 // indirect
	github.com/leodido/go-urn v1.2.1 // indirect
	github.com/lufia/plan9stats v0.0.0-20220913051719-115f729f3c8c // indirect
	github.com/mattn/go-isatty v0.0.16 // indirect
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/modern-go/reflect2 v1.0.2 // indirect
	github.com/pelletier/go-toml/v2 v2.0.5 // indirect
	github.com/power-devops/perfstat v0.0.0-20220216144756-c35f1ee13d7c // indirect
	github.com/remyoudompheng/bigfft v0.0.0-20200410134404-eec4a21b6bb0 // indirect
	github.com/tklauser/go-sysconf v0.3.10 // indirect
	github.com/tklauser/numcpus v0.5.0 // indirect
	github.com/ugorji/go/codec v1.2.7 // indirect
	github.com/yusufpapurcu/wmi v1.2.2 // indirect
	golang.org/x/net v0.0.0-20220920203100-d0c6ba3f52d9 // indirect
	golang.org/x/sys v0.0.0-20220919091848-fb04ddd9f9c8 // indirect
	google.golang.org/protobuf v1.28.1 // indirect
	gopkg.in/yaml.v2 v2.4.0 // indirect
	modernc.org/libc v1.19.0 // indirect
	modernc.org/mathutil v1.5.0 // indirect
	modernc.org/memory v1.4.0 // indirect
	modernc.org/sqlite v1.19.1 // indirect
)
