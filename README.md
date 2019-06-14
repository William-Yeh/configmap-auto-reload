# Examples for Auto Reloading from ConfigMap 

This repo demonstrates 3 ways for apps to auto reload from Kubernetes ConfigMap.


## Built-in auto-reloading

[Traefik](https://traefik.io/) has a built-in auto-reloading feature.  Will this work with Kubernetes ConfigMap?

See the [traefik-example](./traefik-example).



## External signals

Nginx by itself doesn't auto-reload configurations; it reloads config when it is *told* to do so -- by receiving a "reload" signal (`HUP`).  See "[Controlling nginx](http://nginx.org/en/docs/control.html)" document for more details.

Will this work with Kubernetes ConfigMap?

See the [inotifywait-example](./inotifywait-example).



## Pod rollout

With the help of a generic solution [Reloader](https://github.com/stakater/Reloader), pods can be restarted whenever related ConfigMap has changed.

See the [reloader-example](./reloader-example).


## LICENSE

Apache License 2.0.  See the [LICENSE](LICENSE) file.
