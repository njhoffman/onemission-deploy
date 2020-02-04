# Running locally in docker

Clone this repo with associated onemission submodule

```
git clone git@github.com/njhoffman/onemission-deploy.git
```

Create wp-bootstrap-config.php from sample file:

```
cd onemission && cp wp-bootstrap-config.sample.php wp-bootstrap-config.php
```

Install latest wordpress version into onemission repo:

```
./install.sh       # this installs latest version
./install.sh 5.1.2 # provide specific version if desired
./uninstall.sh     # this removes core wordpress files
```

Build docker containers and run them:

```
docker-compose up
# or rebuild images, remove volumes and run the containers
./start.sh
```

This starts the following containers:

- nginx server (default port 7000)
- phpmyadmin web console (default port 9999)
- mysql db server: sql files in the /sql/ directory is preloaded here
- fpm php processor
- wp-cli utility

Edit the onemission submodule directly as this is the web root of the nginx and php container.

The nginx server is configured to redirect requests of content/uploads/ to onemission.fund/content/uploads so large assets load locally without having to be transferred directly.
