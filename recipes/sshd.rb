# custom security settings for sshd
service "ssh" do
  supports :restart => true, :enable => true, :disable => true
  action :nothing
end

if node[:ipaddress].match(/192.168..\d{1,3}\.\d{1,3}/)
  internal_ip = node[:ipaddress] 
end

template "/etc/ssh/sshd_config" do
  source "sshd_config.erb"
  mode "0644"
  variables(
    :port => node[:sshd][:port],
    :permit_root_login => node[:sshd][:permit_root_login],
    :password_authentication => node[:sshd][:password_authentication],
    :internal_ip => internal_ip
  )
  notifies :restart, "service[ssh]"
end