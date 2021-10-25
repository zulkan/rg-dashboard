package http

import (
	"fmt"
	"github.com/gin-gonic/gin"
	"github.com/zulkan/rg-dashboard/domain"
)

type server struct {
	packageUseCase domain.PackageUseCase
}

func NewHttpServer(port int, packageUseCase domain.PackageUseCase) error {

	svr := &server{packageUseCase: packageUseCase}

	router := gin.Default();
	router.GET("rg-package-dummy/", svr.handle)

	router.Run(fmt.Sprintf(":%d", port))

	return nil
}
