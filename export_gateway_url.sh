export INGRESS_HOST=$(kubectl -n istio-system get service istio-ingressgateway -o jsonpath='{.status.loadBalancer.ingress[0].ip}')
export INGRESS_PORT=$(kubectl -n istio-system get service istio-ingressgateway -o jsonpath='{.spec.ports[?(@.name=="http2")].port}')
export SECURE_INGRESS_PORT=$(kubectl -n istio-system get service istio-ingressgateway -o jsonpath='{.spec.ports[?(@.name=="https")].port}')

echo "Host: $INGRESS_HOST"
echo "Port: $INGRESS_PORT"
echo "Secure Port: $SECURE_INGRESS_PORT"

export GATEWAY_URL=$INGRESS_HOST:$INGRESS_PORT
echo "Gateway URL: $GATEWAY_URL"
