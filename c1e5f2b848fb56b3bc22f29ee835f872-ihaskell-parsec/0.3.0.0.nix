{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.16";
        identifier = {
          name = "ihaskell-parsec";
          version = "0.3.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "andrew.gibiansky@gmail.com";
        author = "Andrew Gibiansky";
        homepage = "http://www.github.com/gibiansky/ihaskell";
        url = "";
        synopsis = "IHaskell display instances for Parsec";
        description = "";
        buildType = "Simple";
      };
      components = {
        ihaskell-parsec = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.random
            hsPkgs.parsec
            hsPkgs.here
            hsPkgs.ihaskell
          ];
        };
      };
    }