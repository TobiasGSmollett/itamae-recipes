execute "install gmp-devel" do
  command "dnf install gmp-devel -y"
end

execute "install libbsd-devel" do
  command "dnf install libbsd-devel -y"
end

execute "install libedit-devel" do
  command "dnf install libedit-devel -y"
end

execute "install libevent-devel" do
  command "dnf install libevent-devel -y"
end

execute "install libxml2-devel" do
  command "dnf install libxml2-devel -y"
end

execute "install libyaml-devel" do
  command "dnf install libyaml-devel -y"
end

execute "install llvm-static" do
  command "dnf install llvm-static -y"
end

execute "install openssl-devel" do
  command "dnf install openssl-devel -y"
end

execute "install readline-devel" do
  command "dnf install readline-devel -y"
end

execute "install fedora-repos-rawhide" do
  command "dnf install fedora-repos-rawhide -y"
end

execute "get all dependencies" do
  command "dnf install gc gc-devel -y"
end

execute "upgrade only gc and gc-devel to the version in Rawhide" do
  command "dnf install gc gc-devel --enablerepo=rawhide --best --allowerasing -y"
end

execute "install wget" do
  command "dnf install wget -y"
end

execute "install tar" do
  command "dnf install tar -y"
end

execute "download crystal-v0.22.0" do
  command "wget https://github.com/crystal-lang/crystal/releases/download/0.22.0/crystal-0.22.0-1-linux-x86_64.tar.gz"
end

execute "uncompress crystal" do
  command "tar -zxvf crystal-0.22.0-1-linux-x86_64.tar.gz"
end

link "link crystal-0.22.0-1" do
  link "/usr/local/bin/crystal"
  to "/root/crystal-0.22.0-1/bin/crystal"
end

directory "/root/crystal-0.22.0-1-linux-x86_64.tar.gz" do
  action :delete
end
