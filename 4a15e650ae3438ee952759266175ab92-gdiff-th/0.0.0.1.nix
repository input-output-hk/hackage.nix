{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "gdiff-th";
          version = "0.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jonathangfischoff@gmail.com";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Generate gdiff GADTs and Instances.";
        description = "Generate gdiff GADTs and Instances. Very Alpha. Does not yet support GADTs among other this I'm sure.";
        buildType = "Simple";
      };
      components = {
        gdiff-th = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.uniplate
            hsPkgs.tuple
            hsPkgs.mtl
            hsPkgs.specialize-th
            hsPkgs.universe-th
            hsPkgs.type-sub-th
            hsPkgs.gdiff
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.template-haskell
              hsPkgs.DebugTraceHelpers
              hsPkgs.QuickCheck
              hsPkgs.HUnit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework
              hsPkgs.uniplate
              hsPkgs.checkers
              hsPkgs.mtl
              hsPkgs.th-instances
              hsPkgs.specialize-th
              hsPkgs.universe-th
              hsPkgs.type-sub-th
              hsPkgs.gdiff
              hsPkgs.tuple
            ];
          };
        };
      };
    }