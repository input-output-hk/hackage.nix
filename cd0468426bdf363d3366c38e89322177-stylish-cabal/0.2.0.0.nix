{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      werror = false;
      test-hackage = false;
      test-strictness = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "stylish-cabal";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "me@jude.xyz";
        author = "Jude Taylor";
        homepage = "";
        url = "";
        synopsis = "Format Cabal files";
        description = "A tool for nicely formatting your Cabal file.";
        buildType = "Simple";
      };
      components = {
        "stylish-cabal" = {
          depends  = [
            hsPkgs.base
            hsPkgs.Cabal
            hsPkgs.ansi-wl-pprint
            hsPkgs.deepseq
            hsPkgs.split
          ];
        };
        exes = {
          "stylish-cabal" = {
            depends  = [
              hsPkgs.base
              hsPkgs.ansi-wl-pprint
              hsPkgs.optparse-applicative
              hsPkgs.stylish-cabal
            ];
          };
        };
        tests = {
          "hlint" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hlint
            ];
          };
          "strictness" = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.StrictCheck
              hsPkgs.ansi-wl-pprint
              hsPkgs.bytestring
              hsPkgs.deepseq
              hsPkgs.generics-sop
              hsPkgs.hspec
              hsPkgs.hspec-expectations-pretty-diff
              hsPkgs.stylish-cabal
            ];
          };
          "roundtrip" = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.ansi-wl-pprint
              hsPkgs.containers
              hsPkgs.hspec
              hsPkgs.hspec-core
              hsPkgs.hspec-expectations-pretty-diff
              hsPkgs.stylish-cabal
            ];
          };
          "roundtrip-hackage" = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.aeson
              hsPkgs.ansi-wl-pprint
              hsPkgs.containers
              hsPkgs.hspec
              hsPkgs.hspec-core
              hsPkgs.hspec-expectations-pretty-diff
              hsPkgs.lens
              hsPkgs.mwc-random
              hsPkgs.stylish-cabal
              hsPkgs.utf8-string
              hsPkgs.vector
              hsPkgs.wreq
            ];
          };
        };
      };
    }