
include_recipe "nginx_passenger"
include_attribute "deploy"

node.normal.nginx_passenger.sites_dir="#{node[:deploy][application][:deploy_to]}/current"

