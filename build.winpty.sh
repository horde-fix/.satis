winpty docker run --rm --init -it \
  --user $(id -u):$(id -g) \
  --volume "/$(pwd -W):/build" \
  --volume "/$(pwd -W)/var/.composer:/composer" \
  composer/satis --stats build satis.json dist
