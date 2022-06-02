build:
    echo $GITHUB_TOKEN | docker login ghcr.io -u $GITHUB_ACTOR --password-stdin
    docker build --build-arg GITHUB_ACTOR --build-arg GITHUB_TOKEN -t ghcr.io/moomoocow-learn/kt_app_sample .
    docker push ghcr.io/moomoocow-learn/kt_app_sample:latest
 