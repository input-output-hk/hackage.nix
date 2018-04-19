{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.18";
        identifier = {
          name = "harmony";
          version = "0.1.0.3";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "santimunin@gmail.com";
        author = "Santiago Munín";
        homepage = "";
        url = "";
        synopsis = "A web service specification compiler that generates implementation and tests.";
        description = "This application defines a specification language for web services and reads\nit in order to generate implementation, tests, clients, etc...";
        buildType = "Custom";
      };
      components = {
        harmony = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.BNFC
            hsPkgs.hastache
            hsPkgs.text
            hsPkgs.mtl
            hsPkgs.derive
            hsPkgs.directory
            hsPkgs.QuickCheck
            hsPkgs.process
            hsPkgs.hslogger
          ];
        };
        exes = {
          harmony = {
            depends  = [
              hsPkgs.base
              hsPkgs.harmony
            ];
          };
        };
        tests = {
          hspec = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.HUnit
              hsPkgs.harmony
              hsPkgs.derive
              hsPkgs.hslogger
            ];
          };
          hlint = {
            depends  = [
              hsPkgs.base
              hsPkgs.hlint
            ];
          };
        };
      };
    }