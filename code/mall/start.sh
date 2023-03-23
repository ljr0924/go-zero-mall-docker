go mod tidy

echo "开始启动user"
go run /usr/src/code/mall/service/user/rpc/user.go -f /usr/src/code/mall/service/user/rpc/etc/user.yaml >> /tmp/logs/userrpc.log 2>&1 &
go run /usr/src/code/mall/service/user/api/user.go -f /usr/src/code/mall/service/user/api/etc/user.yaml >> /tmp/logs/userapi.log 2>&1 &
echo "启动user完成"

echo "开始启动product"
go run /usr/src/code/mall/service/product/rpc/product.go -f /usr/src/code/mall/service/product/rpc/etc/product.yaml >> /tmp/logs/productrpc.log 2>&1 &
go run /usr/src/code/mall/service/product/api/product.go -f /usr/src/code/mall/service/product/api/etc/product.yaml >> /tmp/logs/productapi.log 2>&1 &
echo "启动product完成"

echo "开始启动order"
go run /usr/src/code/mall/service/order/rpc/order.go -f /usr/src/code/mall/service/order/rpc/etc/order.yaml >> /tmp/logs/orderrpc.log 2>&1 &
go run /usr/src/code/mall/service/order/api/order.go -f /usr/src/code/mall/service/order/api/etc/order.yaml >> /tmp/logs/orderapi.log 2>&1 &
echo "启动order完成"

echo "开始启动pay"
go run /usr/src/code/mall/service/pay/rpc/pay.go -f /usr/src/code/mall/service/pay/rpc/etc/pay.yaml >> /tmp/logs/payrpc.log 2>&1 &
go run /usr/src/code/mall/service/pay/api/pay.go -f /usr/src/code/mall/service/pay/api/etc/pay.yaml >> /tmp/logs/payapi.log 2>&1 &
echo "启动pay完成"