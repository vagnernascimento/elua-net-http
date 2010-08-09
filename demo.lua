require "http"

print(1,"\r\n")
local resp = http.request{url = "http://www.eluaproject.net/en_refman_gen_net.html#overview"}
print("CODE:",resp.code,"\r\n HEADERS:",resp.headers,"\r\n BODY:",resp.body,"\r\n")

print(2,"\r\n")
local resp = http.request{ 
                     url= "http://www.pachube.com/api/feeds/2480.csv" ,
                     headers = {["X-PachubeApiKey"] = "please_put_here_you_pachube_key"},
                   }
print("CODE:",resp.code,"\r\n HEADERS:",resp.headers,"\r\n BODY:",resp.body)

print(3,"\r\n")
local resp = http.request{
							url = "http://wiki.eluaproject.net/FrontPage",
							method = "POST",
							source = "searchinput=net",
							}
print("CODE:",resp.code,"\r\n HEADERS:",resp.headers,"\r\n BODY:",resp.body,"\r\n")
