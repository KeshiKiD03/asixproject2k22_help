
1

OpenVPN + Wazuh + OpenLDAP + Radius + SSH Criptografia o OpenSSL --> AWS (Deployment a AWS  + Docker).

2 

WireGuardVPN + Samba + Wazuh + SSH Criptograph + OpenSSL + --> AWS (Deployment a AWS)



#### Docker

Docker --> docker run -it ubuntu:latest

# Ubuntu1 VPN WireGuard + Wazuh o RADIUS + Iptables

* Desplegament Ubuntu Server

ubuntu# apt-get update && apt-get install -y ubuntu-server

* Tendrá Wireguard VPN

Implementación de VPN con WireGuard.

* 5 clients (wireguards client), un cliente será debian - fedora - ubuntu - otras 2

# Ubuntu2 DNS Cripto + Par claves Priv Pub + OpenSSL

* Desplegament Ubuntu Server con DNS. Uno principal + Uno secundario y tendrá DNS Sec

### VirtualBox

# Ubuntu3 Samba

---------

# AWS (Desplegar 3 servidores)

# Local (Conectarnos a la WireGuardVPN) - 2 host

Desde local abrir un Tunel VPN de WireGuard a AWS para que se pueda conectar a la VPN y tener servicios de DNS - Samba etc.

--------------