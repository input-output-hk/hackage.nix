{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "haskell-names";
          version = "0.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Roman Cheplyaka <roma@ro-che.info>";
        author = "Roman Cheplyaka, Lennart Augustsson";
        homepage = "http://documentup.com/haskell-suite/haskell-names";
        url = "";
        synopsis = "Name resolution library for Haskell";
        description = "For a high-level overview of this package,\nsee <http://documentup.com/haskell-suite/haskell-names>";
        buildType = "Simple";
      };
      components = {
        haskell-names = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell-src-exts
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.filepath
            hsPkgs.containers
            hsPkgs.hse-cpp
            hsPkgs.uniplate
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.haskell-packages
            hsPkgs.data-lens
            hsPkgs.data-lens-template
            hsPkgs.tagged
            hsPkgs.traverse-with-class
            hsPkgs.type-eq
            hsPkgs.Cabal
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell-src-exts
              hsPkgs.mtl
              hsPkgs.filepath
              hsPkgs.containers
              hsPkgs.hse-cpp
              hsPkgs.uniplate
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.haskell-packages
              hsPkgs.tasty
              hsPkgs.tasty-golden
              hsPkgs.filemanip
              hsPkgs.utf8-string
              hsPkgs.pretty-show
              hsPkgs.Cabal
              hsPkgs.haskell-names
              hsPkgs.tagged
              hsPkgs.traverse-with-class
            ];
          };
        };
      };
    }