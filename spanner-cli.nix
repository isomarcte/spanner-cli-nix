{
  fetchFromGitHub,
  buildGoModule,
}:

let
  version = "0.11.1";
  revSha = "sha256-IWQGGgREMV1DLWcbMG5odsl+JDeV/42XsQM95ICh8vM=";
  vendorHash = "sha256-0y6EGi3mUSYhk/3DeE2RLZgJY+h5oV4R/k8wSJla4GE=";
in
buildGoModule {
  inherit version;
  pname = "spanner-cli";
  src = fetchFromGitHub {
    owner = "cloudspannerecosystem";
    repo = "spanner-cli";
    rev = "v${version}";
    sha256 = revSha;
  };
  inherit vendorHash;
}
