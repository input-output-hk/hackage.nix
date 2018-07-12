{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      in-ghc-tree = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "haddock";
          version = "2.17.4";
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
        exes = {
          "haddock" = {
            depends  = [
              hsPkgs.base
            ] ++ (if _flags.in-ghc-tree
              then [
                hsPkgs.filepath
                hsPkgs.directory
                hsPkgs.containers
                hsPkgs.deepseq
                hsPkgs.array
                hsPkgs.xhtml
                hsPkgs.Cabal
                hsPkgs.ghc-boot
                hsPkgs.ghc
                hsPkgs.bytestring
                hsPkgs.transformers
              ]
              else [ hsPkgs.haddock-api ]);
          };
        };
        tests = {
          "driver-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
            ];
          };
          "html-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.filepath
              hsPkgs.haddock-test
            ];
          };
          "hypsrc-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.filepath
              hsPkgs.haddock-test
            ];
          };
          "latex-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.filepath
              hsPkgs.haddock-test
            ];
          };
          "hoogle-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.filepath
              hsPkgs.haddock-test
            ];
          };
        };
      };
    }