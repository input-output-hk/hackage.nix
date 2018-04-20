{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "haskell-packages";
          version = "0.2.3.4";
        };
        license = "MIT";
        copyright = "(c) Roman Cheplyaka 2012";
        maintainer = "Roman Cheplyaka <roma@ro-che.info>";
        author = "Roman Cheplyaka";
        homepage = "http://documentup.com/haskell-suite/haskell-packages";
        url = "";
        synopsis = "Haskell suite library for package management and integration with Cabal";
        description = "See <http://documentup.com/haskell-suite/haskell-packages>";
        buildType = "Simple";
      };
      components = {
        haskell-packages = {
          depends  = [
            hsPkgs.base
            hsPkgs.optparse-applicative
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.Cabal
            hsPkgs.deepseq
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.hse-cpp
            hsPkgs.either
            hsPkgs.haskell-src-exts
            hsPkgs.tagged
          ];
        };
      };
    }