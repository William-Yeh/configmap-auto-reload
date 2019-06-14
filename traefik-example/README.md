# Auto-Reload: Traefik example

Purpose: to see if [Traefik](https://traefik.io/) auto-reload feature still works in Kubernetes.


To simply the demo steps, use [Skaffold](https://skaffold.dev/) to bootstrap the whole stuff.

```
.
├── traefik-config.yml
├── traefik-service.yml
└── skaffold.yaml

0 directories, 3 files
```


## Usage

1. Create a `traefik-example` namespace for this test:

   ```
   % kubectl create ns traefik-example
   ```

2. Use [Skaffold](https://skaffold.dev/) to load configmap content (`traefik-config`) and bring up traefik app (`service/traefik`) in the `traefik-example` namespace:

   ```
   % skaffold dev  -n traefik-example
   ```

3. Watch for traefik logs:

   ```
   % kubectl logs -f service/traefik  -n traefik-example
   ```

4. Edit the ConfigMap content, eithor by:

   ```
   % kubectl edit configmap traefik-config  -n traefik-example
   ```

   or by:

   ```
   % vi traefik-config.yml
   ```


## Demo

You can see the demo at:

[![asciicast](https://asciinema.org/a/251179.svg)](https://asciinema.org/a/251179)