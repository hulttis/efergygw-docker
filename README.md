# EFERGYGW-DOCKER 1.1.0 (191124)
**Efergy InfluxDB / MQTT gateway ( python 3.8 ) Docker**

See `https://github.com/hulttis/efergygw` for more inflrmation

### INSTALLATION
#### REQUIREMENTS
- Linux (tested in Ubuntu server 18.04.03 and 2019-09-26-raspbian-buster-lite) or Windows (maybe also Mac OS).
- python 3.8 (tested also with 3.7)
- git (`sudo apt -y install git`)
 
#### DOCKER-COMPOSE
- create compose directory (`mkdir ~/compose && cd ~/compose`)
- clone git repository (`git clone https://github.com/hulttis/efergygw-docker.git efergygw`)
- copy docker-compose.yaml (`cp efergygw/docker-compose.yaml .`)
- edit efergygw/efergygw.json (`nano efergygw/efergygw.json`)
- create /var/log/efergygw directory (`sudo mkdir -p /var/log/efergygw`) for logs
- start efergygw container (`docker-compose up -d efergygw`)
- check logs (`docker-compose logs --tail 500 efergygw` or `journalctl -u ruuvigw -b --no-pager`)

### LICENCE
MIT License is used for this software.
