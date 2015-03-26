

if app[:state] == 'restart'
    Chef::Log.warn("Restart gonna work")
    
  directory "/var/lib/restart" do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
  end
elseif app[:state] == 'stop'
    Chef::Log.warn("Restart gonna work")
    
  directory "/var/lib/stop" do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
  end
end
end
