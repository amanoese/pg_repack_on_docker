.PHENY: build push

build:
	docker image build -t amanoese/pg_repack:1.4.6 -t amanoese/pg_repack:latest src/centos8/1.4.6/
	docker image build -t amanoese/pg_repack:1.4.5 src/centos8/1.4.5/
	docker image build -t amanoese/pg_repack:1.4.4 src/centos8/1.4.4/
	docker image build -t amanoese/pg_repack:1.4.3 src/centos8/1.4.3/

push:
	docker image push amanoese/pg_repack:latest
	docker image push amanoese/pg_repack:1.4.6
	docker image push amanoese/pg_repack:1.4.5
	docker image push amanoese/pg_repack:1.4.4
	docker image push amanoese/pg_repack:1.4.3
