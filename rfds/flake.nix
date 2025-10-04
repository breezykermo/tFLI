{
  description = "RFD development environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    typst.url = "github:typst/typst/main";
  };

  outputs = { self, nixpkgs, flake-utils, typst }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [
            pandoc
            fish
            just
          ] ++ [
            typst.packages.${system}.default
          ];

          shellHook = ''
            echo "RFD development environment loaded"
            echo "Run 'just' to convert all Orgmode files to Typst"
            exec fish
          '';
        };
      });
}
