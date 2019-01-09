{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "point-octree"; version = "0.5.5.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright by Michal J. Gajda '2012, Copyright by Michael Litchard '2016";
      maintainer = "michael@schmong.org";
      author = "Michal J. Gajda, Michael Litchard";
      homepage = "https://github.com/mlitchard/point-octree";
      url = "http://hackage.haskell.org/package/point-octree";
      synopsis = "Point octree, with bounding boxes";
      description = "Based on Michal J. Gajda's octree package, but with bounding boxes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.AC-Vector) (hsPkgs.QuickCheck) ];
        };
      tests = {
        "test_Octree" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.AC-Vector)
            (hsPkgs.QuickCheck)
            ];
          };
        "readme" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.AC-Vector)
            (hsPkgs.QuickCheck)
            (hsPkgs.markdown-unlit)
            ];
          };
        "readme-BB" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.AC-Vector)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.random-shuffle)
            (hsPkgs.markdown-unlit)
            ];
          };
        };
      };
    }