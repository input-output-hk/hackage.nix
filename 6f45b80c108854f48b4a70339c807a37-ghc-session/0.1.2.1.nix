{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ghc-session";
          version = "0.1.2.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Piotr Młodawski <remdezx+github@gmail.com>";
        author = "Piotr Młodawski";
        homepage = "http://github.com/pmlodawski/ghc-session";
        url = "";
        synopsis = "Simplified GHC API";
        description = "Simplified GHC API";
        buildType = "Simple";
      };
      components = {
        ghc-session = {
          depends  = [
            hsPkgs.base
            hsPkgs.exceptions
            hsPkgs.ghc
            hsPkgs.ghc-mtl
            hsPkgs.ghc-paths
            hsPkgs.transformers
            hsPkgs.transformers-compat
          ];
        };
        exes = {
          ghc-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.ghc-session
              hsPkgs.transformers
            ];
          };
        };
      };
    }