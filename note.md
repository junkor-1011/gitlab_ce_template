Note
==============

## Container Registry

- because of using gitlab authentication, resolve DNS by editing `/etc/hosts`

```hosts:/etc/hosts
# example
127.0.0.1   gitlab.example.com
```

- docker login

```bash
# port: designate in `gitlab.rb`
docker login gitlab.example.com:5050
```

