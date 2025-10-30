# Create an A record for each load balancer IP address. For example, consider the following DNS zone file:

$ORIGIN example.local.
@       3600 IN SOA dns1.example.local. admin.example.local. (
            2017042745 ; serial
            1800       ; refresh (30 minutes)
            900        ; retry (15 minutes)
            1209600    ; expire (2 weeks)
            60       ; minimum (1 minute)
         )
        
        3600 IN NS dns1.example.local.
        
@     60 IN A     192.168.50.10
@     60 IN A     192.168.50.11
www   60 IN CNAME @


#Depending on your DNS server, you may need to enable load-balancing of the A records.
#It is also a good idea to set a shorter TTL for these records to avoid staying cached in intermediate nameservers for long.