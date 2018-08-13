{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "system-random-effect";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "cgaebel@uwaterloo.ca";
      author = "Clark Gaebel";
      homepage = "https://github.com/wowus/system-random-effect";
      url = "";
      synopsis = "Random number generation for extensible effects.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "system-random-effect" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.extensible-effects)
          (hsPkgs.mersenne-random-pure64)
          (hsPkgs.statistics)
          (hsPkgs.vector)
          (hsPkgs.vector-algorithms)
        ];
      };
      tests = {
        "extensible-effects-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.extensible-effects)
            (hsPkgs.system-random-effect)
          ];
        };
      };
    };
  }