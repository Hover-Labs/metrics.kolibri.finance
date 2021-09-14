build-docker:
	docker build --platform=linux/amd64 -t kolibri-stats-site .

bash:
	docker run --rm -it --platform=linux/amd64 -p 8080:8080 -v $$(pwd):/shared --workdir /shared kolibri-stats-site bash

serve:
	docker run --rm -it --platform=linux/amd64 -p 8080:8080 -v $$(pwd):/shared --workdir /shared kolibri-stats-site npm run serve
