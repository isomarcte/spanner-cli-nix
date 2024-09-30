{ stdenv, pkgs, lib, fetchFromGitHub }:

let
  version = "0.10.5";
in
pkgs.buildGoModule {
  inherit version;
  pname = "spanner-cli";
  src = fetchFromGitHub {
    owner = "cloudspannerecosystem";
    repo = "spanner-cli";
    rev = "v${version}";
    sha256 = "sha256-4umtZFsEYu0JI4l3PT4A3KPpemjVPwQMweU5j/dcnNs=";
  };
  vendorHash = "sha256-m6/M9gD+iRAmS4tQ+tHoqWzI8mZTN1RUuqCYaPTsSK8=";
  patches = [
    ./spanner-cli-0.10.5-tidy.patch
  ];
}
