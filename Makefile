# Make file to install flexiblas via spack on docker 

v1.9.3:
	docker build -f Dockerfile --build-arg ATLAB_VERSION=1.9.3 -t bigdft-atlab:1.9.3 .
	
v1.9.2:
	docker build -f Dockerfile --build-arg ATLAB_VERSION=1.9.2 -t bigdft-atlab:1.9.2 .
	
v1.9.1:
	docker build -f Dockerfile --build-arg ATLAB_VERSION=1.9.1 -t bigdft-atlab:1.9.1 .


.PHONY: v1.9.3, 1.9.2, 1.9.3

diff:
	@echo "Compare (diff) spack/package.py with current package.py from spack develop"
	wget --output-document=spack/package-upstream.py https://raw.githubusercontent.com/spack/spack/develop/var/spack/repos/builtin/packages/bigdft-atlab/package.py
	diff spack/package-upstream.py spack/package.py || true
