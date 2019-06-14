# Auto-Reload: Inotifywait example

Purpose: use [inotifywait](https://github.com/rvoicilas/inotify-tools) to watch for ConfigMap changes and to send signal to Nginx if necessary.


To simply the demo steps, use [Skaffold](https://skaffold.dev/) to bootstrap the whole stuff.

```
.
├── Dockerfile
├── nginx-config.yml
├── nginx-service.yml
├── skaffold.yaml
└── watch-nginx.sh

0 directories, 5 files
```


## Usage

1. Create a `inotify-example` namespace for this test:

   ```
   % kubectl create ns inotify-example
   ```

2. Use [Skaffold](https://skaffold.dev/) to load configmap content (`nginx-config`) and bring up nginx app (`service/nginx`) in the `inotify-example` namespace:

   ```
   % skaffold dev  -n inotify-example
   ```

3. Edit the ConfigMap content, eithor by:

   ```
   % kubectl edit configmap nginx-config  -n inotify-example
   ```

   or by:

   ```
   % vi nginx-config.yml
   ```


## Demo

You can see the demo at:

[![asciicast](https://asciinema.org/a/251666.svg)](https://asciinema.org/a/251666)