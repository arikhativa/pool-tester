
IMG=arikhativa/pool-tester:1.0.1
NAME=pool-tester
CLOUD_IMG=arikhativa/pool-tester:1.0.1
WORKDIR=/home

.PHONY: build push run stop enter test valgrind review review/valgrind

build:
	docker build -t $(IMG) .

push:
	docker push $(IMG)

run:
	docker run -d -it -v $(HOME):$(WORKDIR)/ --name $(NAME) $(IMG)

stop:
	docker rm -f $(NAME)

re: stop run
	@true

enter:
	docker exec -it $(NAME) bash

test:
	./test.sh $(PROJ) ~

valgrind:
	docker exec -it $(NAME) $(WORKDIR)/pool-tester/test.sh $(PROJ) $(WORKDIR)

review:
	./test.sh $(PROJ) ~/code_review

review/valgrind:
	docker exec -it $(NAME) $(WORKDIR)/pool-tester/test.sh $(PROJ) $(WORKDIR)/code_review
