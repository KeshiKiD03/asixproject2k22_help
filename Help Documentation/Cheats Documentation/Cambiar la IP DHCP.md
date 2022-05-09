Comando para liberar la IP

El siguiente comando indicará a dhclient que libere la concesión actual que tiene del servidor DHCP. El protocolo DHCP no lo requiere, pero algunos ISP solicitan a sus clientes que notifiquen al servidor DHCP si desean liberar una dirección IP asignada.

$ sudo dhclient -r -v