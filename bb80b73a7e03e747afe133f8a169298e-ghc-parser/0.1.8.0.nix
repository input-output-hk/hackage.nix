{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.16";
        identifier = {
          name = "ghc-parser";
          version = "0.1.8.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "andrew.gibiansky@gmail.com";
        author = "Andrew Gibiansky";
        homepage = "https://github.com/gibiansky/IHaskell";
        url = "";
        synopsis = "Haskell source parser from GHC.";
        description = "";
        buildType = "Custom";
      };
      components = {
        ghc-parser = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc
          ];
        };
      };
    }