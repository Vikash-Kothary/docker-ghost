
%: %-ghost
	@true

build-ghost:
	cd image/ && \
	docker-compose build

run-ghost: build-ghost
	cd examples/ && \
	docker-compose up -d

clean-ghost:
	cd examples/ && \
	docker-compose rm