docker-timesketch (Work in progress...)
=======================================

Automated build of timesketch, an experimental, proof of concept open source tool for collaborative forensic timeline analysis.

Dockerfile
----------
Use this to build a new image:

	$ git clone https://github.com/2xyo/docker-timesketch.git
    $ cd docker-timesketch && docker build  -t 2xyo/docker-timesketch .

Running the container:

    $ docker run -it -v $PWD/data:/data \
		-v $PWD/scripts:/scripts \
		-v $PWD/conf/settings_local.py:/timesketch/timesketch/settings_local.py \
		-p 8000:8000 \
		2xyo/docker-timesketch


Now go to `http://127.0.0.1:8000/admin/` in your browser (admin:admin)
