{
  description = "Typst";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
          config.allowUnfree = true;
        };

        # Shared libraries the pip-installed wheels in .venv dlopen at runtime.
        # NixOS has no /usr/lib, so they must be on LD_LIBRARY_PATH.
        pythonLibs = with pkgs; [
          stdenv.cc.cc.lib # libstdc++.so.6
          zlib # libz.so.1
          glib # matplotlib / Qt backends
          libGL
          zstd
        ];
      in {
        devShells = {
          default = pkgs.mkShell {
            buildInputs = with pkgs; [
              typst
              tinymist
              python3
            ] ++ pythonLibs;

            LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath pythonLibs;

            shellHook = ''
              if [ ! -d .venv ]; then
                echo "Creating .venv..."
                python -m venv .venv
              fi
              source .venv/bin/activate
            '';
          };
        };
      });
}
