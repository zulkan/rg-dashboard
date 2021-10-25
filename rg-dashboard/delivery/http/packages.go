package http

import (
	"github.com/gin-gonic/gin"
	"log"
)

func (s server) handle(c *gin.Context) {
	userId, bool := c.GetQuery("userId")

	log.Println(userId, bool)

	c.JSON(200,
		s.packageUseCase.GetPackagesStatusByUserId(userId),
	)
}

func getPackagesById(userId string) {

}
