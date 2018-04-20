{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "2.0";
        identifier = {
          name = "haddock-api";
          version = "2.18.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Simon Marlow, David Waern";
        maintainer = "Alex Biehl <alexbiehl@gmail.com>, Simon Hengel <sol@typeful.net>, Mateusz Kowalczyk <fuuzetsu@fuuzetsu.co.uk>";
        author = "Simon Marlow, David Waern";
        homepage = "http://www.haskell.org/haddock/";
        url = "";
        synopsis = "A documentation-generation tool for Haskell libraries";
        description = "Haddock is a documentation-generation tool for Haskell\nlibraries";
        buildType = "Simple";
      };
      components = {
        haddock-api = {
          depends  = [
            hsPkgs.base
            hsPkgs.Cabal
            hsPkgs.ghc
            hsPkgs.ghc-paths
            hsPkgs.haddock-library
            hsPkgs.xhtml
            hsPkgs.array
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.ghc-boot
            hsPkgs.transformers
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.ghc
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.containers
            ];
          };
        };
      };
    }