# default port for ssh
default[:sshd][:port] = "22"

# Valid options are yes, without-password, no.
default[:sshd][:permit_root_login] = "no"

# To disable tunneled clear text passwords, change PasswordAuthentication to no.
default[:sshd][:password_authentication] = "no"
