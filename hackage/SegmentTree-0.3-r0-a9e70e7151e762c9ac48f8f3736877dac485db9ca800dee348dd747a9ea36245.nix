{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { test = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "SegmentTree"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Dmitry Astapov <dastapov@gmail.com>";
      author = "Dmitry Astapov <dastapov@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Data structure for querying the set (or count) of intervals covering given point";
      description = "Segment Tree implemented following section 10.3 and 10.4 of\nMark de Berg, Otfried Cheong, Marc van Kreveld, Mark Overmars\n\"Computational Geometry, Algorithms and Applications\", Third Edition\n(2008) pp 231-237";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) ]; };
      exes = {
        "SegmentTreeTests" = {
          depends = (pkgs.lib).optionals (flags.test) [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
            ];
          };
        };
      };
    }