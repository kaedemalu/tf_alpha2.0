!#/bin/bash
docker run \
--rm -it \
-p 8888:8888 \
-v $(pwd):/app:Z \
-w /app \
tensor-alpha \
bash \
"$@"
