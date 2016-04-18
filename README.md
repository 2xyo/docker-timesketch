THIS PROJECT IS DEPRECATED
=======================================

This docker project is not maintained anymore. Docker support for timesketch is in progress in the official repository. See https://github.com/google/timesketch/pull/148

docker-timesketch 
=======================================

Automated build of timesketch, an experimental, proof of concept open source tool for collaborative forensic timeline analysis.

Dockerfile
----------
Use this to build a new image:

	$ git clone https://github.com/2xyo/docker-timesketch.git
    $ cd docker-timesketch && docker build  -t 2xyo/docker-timesketch .

Running the container:

    $ docker run -it \
        -v $PWD/data:/data \
        -v $PWD/scripts/run.sh:/scripts/run.sh \
        -v $PWD/scripts/init_db.py:/app/init_db.py \
        -v $PWD/conf/settings_local.py:/app/timesketch/settings_local.py \
        -p 8000:8000 \
        2xyo/docker-timesketch



Now go to `http://127.0.0.1:8000/admin/` in your browser (admin:admin)
