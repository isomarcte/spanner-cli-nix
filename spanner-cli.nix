{
  fetchFromGitHub,
  buildGoModule,
}:

let
  version = "0.10.9";
  revSha = "sha256-DNZ/56nl/nCmy/cFZu5bZYT2ixUqptKCBXf9ZhU8Z7U=";
  vendorHash = "sha256-BHVQKPsGvHBIU8g0YU+ElHdHleCQRkelxh7hTdgpdF8=";
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
  patches = [ ./spanner-cli-0.10.5-tidy.patch ];
}
