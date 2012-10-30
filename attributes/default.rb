# default port for ssh
default[:sshd][:port] = "22"

# Valid options are yes, without-password, no.
default[:sshd][:permit_root_login] = "no"

# To disable tunneled clear text passwords, change PasswordAuthentication to no.
default[:sshd][:password_authentication] = "no"

# By default, only permit SSH on a private VLAN. Set this to true
# in order to allow SSH over public interfaces.
default["sshd"]["permit_public_ip_access"] = false
