# Auto-Reload: Reloader example

Purpose: use [Reloader](https://github.com/stakater/Reloader) to watch for ConfigMap changes and restart Nginx pods automatically.


To simply the demo steps, use [Skaffold](https://skaffold.dev/) to bootstrap the whole stuff.

```
.
├── nginx-config.yml
├── nginx-service.yml
└── skaffold.yaml

0 directories, 3 files
```


## Usage

1. Install [Reloader](https://github.com/stakater/Reloader):

   ```
   % kubectl apply -f https://raw.githubusercontent.com/stakater/Reloader/master/deployments/kubernetes/reloader.yaml
   ```

2. Create a `reloader-example` namespace for this test:

   ```
   % kubectl create ns reloader-example
   ```

3. Use [Skaffold](https://skaffold.dev/) to load configmap content (`nginx-config`) and bring up nginx app (`service/nginx`) in the `reloader-example` namespace:

   ```
   % skaffold dev  -n reloader-example
   ```

4. Edit the ConfigMap content, eithor by:

   ```
   % kubectl edit configmap nginx-config  -n reloader-example
   ```

   or by:

   ```
   % vi nginx-config.yml
   ```


## Demo

You can see the demo at:

[![asciicast](https://asciinema.org/a/251670.svg)](https://asciinema.org/a/251670)