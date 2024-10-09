Install tor:
sudo apt install tor

enable tor:
sudo systemctl enable tor

start tor:
sudo systemctl start tor

edit tor configuration file:
sudo nano /etc/tor/torrc

ADD to tor configuration file:
AutomapHostsOnResolve 1
AutomapHostsSuffixes .onion,.exit

Browser proxy network settings:
1) Set manual configuration

2) Use SOCKS V5

3) SET SOCKS HOST -> 127.0.0.1

4) SET PORT -> 9050

(optional) stop tor:
sudo systemctl stop tor
