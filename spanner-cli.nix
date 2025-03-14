{ stdenv, pkgs, lib, fetchFromGitHub }:

let
  version = "0.10.10";
in
pkgs.buildGoModule {
  inherit version;
  pname = "spanner-cli";
  src = fetchFromGitHub {
    owner = "cloudspannerecosystem";
    repo = "spanner-cli";
    rev = "v${version}";
    sha256 = "sha256-W1+3RBoRuZMHbAYodN/O8G5XA6zUYtbbSXKLcDFL3NI=";
  };
  vendorHash = "sha256-0y6EGi3mUSYhk/3DeE2RLZgJY+h5oV4R/k8wSJla4GE=";
}
