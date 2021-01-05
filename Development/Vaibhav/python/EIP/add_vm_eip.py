import requests

#variables
site_name = "Pfizer"
vm_name = "vracloudlin0002"
vm_ip_address = "10.12.126.157"
domain_name = "pfizer.com"
added_by ="Added by python for vRA-C"

#url_creation
intial_url = "https://som-eipmain-01.pfizer.com/rpc/ip_add/"
rest_url = "site_name/"+site_name
rest_url += "/hostaddr/"+vm_ip_address
rest_url += "/ip_name/"+vm_name+"."+domain_name
rest_url += "/ip_class_parameters/"
rest_url += "vm_name="+vm_name
rest_url += "&hostname="+vm_name
rest_url += "&domain="+domain_name
rest_url += "&pf_obj_descr="+added_by

#Full URL
url = initial_url+requests.utils.quote(rest_url)
response = requests.get(url,auth=('SRVAMR-IODDDI-D','PfeEIP2020D'),verify=False)
print(response)
