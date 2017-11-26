xmrig-docker
============

Docker image for the `xmrig` Monero CPU miner. `xmrig` is built directly from master branch on its public Github repository with all defaults (including 5% devfee). You can control the devfee from the configuration file.

### Usage
This image is built expecting a JSON configuration file to be available at `$XMRIG_JSON_CONFIG_PATH`. For example, you can mount a volume at `/app/etc` that contains a configuration file named `config.json`, and then run the following command:

```sh
docker run -t -i -d -v /path/to/config:/app/etc -e XMRIG_JSON_CONFIG_PATH=/app/etc/config.json xmrig-docker
```
