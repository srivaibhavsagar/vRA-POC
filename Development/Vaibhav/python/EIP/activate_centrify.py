import ssh 
obj =ssh.Ssh_Util()

# print(obj.execute_command(["adleave -f","rm -f /usr/local/bin/pre_centrify_config.sh >/dev/null 2>&1","wget -q --directory-prefix=/usr/local/bin http://rhn.pfizer.com/dist/AmazonEC2/DEV/pre_centrify_config.sh","chmod +x /usr/local/bin/pre_centrify_config.sh","/usr/local/bin/pre_centrify_config.sh","adjoin --noinit -V -c ou=aws,ou=universal-awscbsdev-amer,ou=universal-awscbsdev,ou=universal,ou=UnixServers,ou=UNIX,dc=amer,dc=pfizer,dc=com -z cn=universal-awscbsdev-amer,cn=universal-awscbsdev,cn=universal,ou=Zones,ou=UNIX,dc=amer,dc=pfizer,dc=com -u SRVGBL-vcacunix@amer.pfizer.com -p NkJKxGSKYqhywxJhlafi1g== -n vracloudlin0002.pfizer.com amer.pfizer.com -f"]))

print(obj.execute_command(["adflush"]))