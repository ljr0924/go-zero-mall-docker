package svc

import (
	"github.com/zeromicro/go-zero/zrpc"
	"mall/service/product/api/internal/config"
	"mall/service/product/rpc/product"
	"mall/service/product/rpc/productclient"
)

type ServiceContext struct {
	Config     config.Config
	ProductRpc product.ProductClient
}

func NewServiceContext(c config.Config) *ServiceContext {
	return &ServiceContext{
		Config:     c,
		ProductRpc: productclient.NewProduct(zrpc.MustNewClient(c.ProductRpc)),
	}
}
