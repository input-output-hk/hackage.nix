{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      test-hlint = false;
      test-afrp = false;
      examples = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "Yampa-core";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Mykola Orliuk (virkony@gmail.com)";
        author = "Henrik Nilsson, Antony Courtney";
        homepage = "https://github.com/ony/Yampa-core";
        url = "";
        synopsis = "Library for programming hybrid systems.";
        description = "Domain-specific language embedded in Haskell for programming\nhybrid (mixed discrete-time and continuous-time) systems. Yampa is based on\nthe concepts of Functional Reactive Programming (FRP) and is structured using\narrow combinators. Yampa-core is a fork of Yampa that prefer to use other\nHaskell libraries like deepseq and vector-space.";
        buildType = "Simple";
      };
      components = {
        Yampa-core = {
          depends  = [
            hsPkgs.base
            hsPkgs.random
            hsPkgs.vector-space
            hsPkgs.deepseq
          ];
        };
        exes = {
          YampaElevator = {
            depends  = [
              hsPkgs.base
              hsPkgs.Yampa-core
            ];
          };
          YampaTailgatingDetector = {
            depends  = [
              hsPkgs.base
              hsPkgs.Yampa-core
            ];
          };
        };
        tests = {
          hlint = {
            depends  = optionals (!(!_flags.test-hlint)) [
              hsPkgs.base
              hsPkgs.hlint
            ];
          };
          testAFRP = {
            depends  = [
              hsPkgs.base
              hsPkgs.Yampa-core
            ];
          };
        };
      };
    }