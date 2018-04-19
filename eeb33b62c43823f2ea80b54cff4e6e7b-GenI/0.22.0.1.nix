{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      static = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "GenI";
          version = "0.22.0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "geni-users@loria.fr";
        author = "Carlos Areces and Eric Kow";
        homepage = "http://projects.haskell.org/GenI";
        url = "";
        synopsis = "A natural language generator (specifically, an FB-LTAG surface realiser)";
        description = "A natural language generator (specifically, an FB-LTAG surface realiser)";
        buildType = "Simple";
      };
      components = {
        GenI = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.cabal-macosx
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.hslogger
            hsPkgs.json
            hsPkgs.MaybeT
            hsPkgs.mtl
            hsPkgs.old-locale
            hsPkgs.ordered
            hsPkgs.parsec
            hsPkgs.process
            hsPkgs.split
            hsPkgs.syb
            hsPkgs.text
            hsPkgs.time
            hsPkgs.utf8-string
            hsPkgs.yaml-light
          ];
        };
        exes = {
          geni = {
            depends  = [
              hsPkgs.base
              hsPkgs.GenI
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.yaml-light
              hsPkgs.hslogger
              hsPkgs.json
              hsPkgs.mtl
              hsPkgs.process
              hsPkgs.split
              hsPkgs.utf8-string
            ];
          };
        };
        tests = {
          geni-test = {
            depends  = [
              hsPkgs.GenI
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.filepath
              hsPkgs.json
              hsPkgs.mtl
              hsPkgs.parsec
              hsPkgs.QuickCheck
              hsPkgs.smallcheck
              hsPkgs.HUnit
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-smallcheck
              hsPkgs.test-framework
              hsPkgs.text
            ];
          };
        };
      };
    }