{
  description = "Spanner CLI Nix Package";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/24.11";
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs = {flake-utils, nixpkgs, ...}:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
        spanner-cli = pkgs.callPackage ./spanner-cli.nix {};
      in
        {
          packages.default = spanner-cli;
        }
    );
}
