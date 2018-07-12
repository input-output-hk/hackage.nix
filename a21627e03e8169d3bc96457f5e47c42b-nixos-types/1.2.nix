{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "nixos-types";
          version = "1.2";
        };
        license = "BSD-3-Clause";
        copyright = "Peter Simons, Andres Loeh";
        maintainer = "Nix Developers <nix-dev@lists.science.uu.nl>";
        author = "Peter Simons <simons@cryp.to>, Andres Loeh <mail@andres-loeh.de>";
        homepage = "http://github.com/haskell4nix/nixos-types";
        url = "";
        synopsis = "Data types representing the Nix language";
        description = "This library provides a collection of data types that represent the\nNix language <http://nixos.org/>.";
        buildType = "Custom";
      };
      components = {
        "nixos-types" = {
          depends  = [
            hsPkgs.base
            hsPkgs.regex-posix
            hsPkgs.pretty
            hsPkgs.Cabal
          ];
        };
      };
    }