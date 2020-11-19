set -e

docker build -t squoosh-rust-nightly --build-arg RUST_IMG=rustlang/rust@sha256:744aeea5a38f95aa7a96ec37269a65f0c6197a1cdd87d6534e12bb869141d807 - < ../rust.Dockerfile
docker run --rm -v $PWD:/src squoosh-rust-nightly "$@"
