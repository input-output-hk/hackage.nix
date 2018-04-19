{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ghci-lib";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "andrew.gibiansky@gmail.com";
        author = "Andrew Gibiansky";
        homepage = "http://github.com/gibiansky/IHaskell";
        url = "";
        synopsis = "A library for interactively evaluating Haskell code.";
        description = "";
        buildType = "Simple";
      };
      components = {
        ghci-lib = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc
            hsPkgs.MissingH
          ];
        };
      };
    }