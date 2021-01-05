import ssh
obj =ssh.Ssh_Util()
print(obj.execute_command(["nslookup 10.12.126.157","nslookup vracloudlin0002.pfizer.com"]))