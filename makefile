build:
	@docker-compose build
run:
	@docker-compose up -d jenkinsdata jenkinsmaster jenkinsnginx
run-slaves: 
	@docker-compose up -d ubuntu ubuntu2 
stop:
	@docker-compose stop
clean:	stop
	@docker-compose rm slave ubuntu ubuntu2 jenkinsmaster jenkinsnginx
clean-data: clean
	@docker-compose rm -v jenkinsdata
clean-images:
	@docker rmi $(docker images -q --filter="dangling=true")

