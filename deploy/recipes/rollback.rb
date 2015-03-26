

if app[:state] == 'restart'
  directory "/var/lib/restart" do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
  end
end

elsif app[:state] == 'stop'
  directory "/var/lib/stop" do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
  end
end
