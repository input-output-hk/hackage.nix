{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "Octree";
          version = "0.5";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright by Michal J. Gajda '2012";
        maintainer = "mjgajda@googlemail.com";
        author = "Michal J. Gajda";
        homepage = "https://github.com/mgajda/octree";
        url = "http://hackage.haskell.org/package/octree";
        synopsis = "Simple unbalanced Octree for storing data about 3D points";
        description = "Octree data structure is relatively shallow data structure for space partitioning.";
        buildType = "Simple";
      };
      components = {
        "Octree" = {
          depends  = [
            hsPkgs.base
            hsPkgs.AC-Vector
            hsPkgs.QuickCheck
          ];
        };
        tests = {
          "test_Octree" = {
            depends  = [
              hsPkgs.base
              hsPkgs.AC-Vector
              hsPkgs.QuickCheck
            ];
          };
          "readme" = {
            depends  = [
              hsPkgs.base
              hsPkgs.AC-Vector
              hsPkgs.QuickCheck
              hsPkgs.markdown-unlit
            ];
          };
        };
      };
    }