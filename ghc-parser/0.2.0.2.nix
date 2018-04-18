{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.16";
        identifier = {
          name = "ghc-parser";
          version = "0.2.0.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "andrew.gibiansky@gmail.com";
        author = "Andrew Gibiansky";
        homepage = "https://github.com/gibiansky/IHaskell";
        url = "";
        synopsis = "Haskell source parser from GHC.";
        description = "";
        buildType = "Simple";
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