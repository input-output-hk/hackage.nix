{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ariadne";
          version = "0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "roma@ro-che.info";
        author = "Roman Cheplyaka";
        homepage = "https://github.com/feuerbach/ariadne";
        url = "";
        synopsis = "Go-to-definition for Haskell";
        description = "See https://github.com/feuerbach/ariadne#ariadne";
        buildType = "Simple";
      };
      components = {
        exes = {
          ariadne-server = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell-names
              hsPkgs.haskell-src-exts
              hsPkgs.haskell-packages
              hsPkgs.mtl
              hsPkgs.bert
              hsPkgs.utf8-string
              hsPkgs.containers
              hsPkgs.Cabal
            ];
          };
        };
      };
    }