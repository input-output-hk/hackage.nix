{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "fgl-arbitrary";
          version = "0.2.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Ivan Lazar Miljenovic";
        maintainer = "Ivan.Miljenovic@gmail.com";
        author = "Ivan Lazar Miljenovic";
        homepage = "";
        url = "";
        synopsis = "QuickCheck support for fgl";
        description = "Provides Arbitrary instances for fgl graphs (to avoid adding a\nQuickCheck dependency for fgl whilst still making the instances\navailable to others).\n\nAlso available are non-fgl-specific functions for generating\ngraph-like data structures.";
        buildType = "Simple";
      };
      components = {
        "fgl-arbitrary" = {
          depends  = [
            hsPkgs.base
            hsPkgs.fgl
            hsPkgs.QuickCheck
          ];
        };
        tests = {
          "fgl-arbitrary-tests" = {
            depends  = [
              hsPkgs.fgl-arbitrary
              hsPkgs.fgl
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.hspec
              hsPkgs.containers
            ];
          };
        };
      };
    }