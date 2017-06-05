# consul-template
Consul-Template docker based on alpine

# Run it
docker run -tid -v `pwd`:/mount mmitrofna/consul-template \
-consul-addr "consul_endpoint" \
-template "/mount/file.ctmpl:/mount/file.txt" \
-once