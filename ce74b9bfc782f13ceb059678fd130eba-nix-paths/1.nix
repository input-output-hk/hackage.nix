{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      allow-relative-paths = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "nix-paths";
          version = "1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Peter Simons <simons@cryp.to>";
        author = "";
        homepage = "https://github.com/peti/nix-paths";
        url = "";
        synopsis = "Knowledge of Nix's installation directories.";
        description = "This module provides full paths to various Nix\nutilities, like @nix-store@, @nix-instantiate@, and\n@nix-env@.";
        buildType = "Custom";
      };
      components = {
        nix-paths = {
          depends  = [
            hsPkgs.base
            hsPkgs.process
          ];
          build-tools = pkgs.lib.optionals (!_flags.allow-relative-paths) [
            hsPkgs.nix-instantiate
            hsPkgs.nix-build
            hsPkgs.nix-env
            hsPkgs.nix-store
          ];
        };
      };
    }