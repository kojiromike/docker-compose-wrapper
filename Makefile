tests: build test1 test2 test3 test4 test5

test1:
	./docker-compose-wrapper up && ./docker-compose-wrapper rm -fv

test2:
	./docker-compose-wrapper -p FAKE_PROJECT_NAME up && ./docker-compose-wrapper -p FAKE_PROJECT_NAME rm -fv

test3:
	cp docker-compose.yml foo.yml && ./docker-compose-wrapper -f foo.yml up && ./docker-compose-wrapper -f foo.yml rm -fv && rm foo.yml

test4:
	COMPOSE_PROJECT_NAME=EMAN_TCEJORP_EKAF ./docker-compose-wrapper up && COMPOSE_PROJECT_NAME=EMAN_TCEJORP_EKAF ./docker-compose-wrapper rm -fv

test5:
	cp docker-compose.yml bar.yml && COMPOSE_FILE=bar.yml ./docker-compose-wrapper up && COMPOSE_FILE=bar.yml ./docker-compose-wrapper rm -fv && rm bar.yml

build: no-context/Dockerfile
	cd no-context && docker build -t kojiromike/docker-compose-wrapper:1.2 .
