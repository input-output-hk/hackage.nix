{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "th-instances";
          version = "0.1.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jonathangfischoff@gmail.com";
        author = "Jonathan Fischoff";
        homepage = "";
        url = "";
        synopsis = "A place to collect orphan instances for Template Haskell";
        description = "A IsString for name, and the beginnings of Arbitrary instances ... I have a instance for Type ... almost ... missing the ForallT.";
        buildType = "Simple";
      };
      components = {
        th-instances = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.QuickCheck
            hsPkgs.checkers
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.DebugTraceHelpers
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework
              hsPkgs.HUnit
            ];
          };
        };
      };
    }