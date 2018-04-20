{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "ipprint";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "gleb.alexeev@gmail.com";
        author = "Gleb Alexeyev";
        homepage = "";
        url = "";
        synopsis = "Tiny helper for pretty-printing values in ghci console";
        description = "Tiny helper for pretty-printing values in ghci console";
        buildType = "Custom";
      };
      components = {
        ipprint = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell-src
          ];
        };
      };
    }