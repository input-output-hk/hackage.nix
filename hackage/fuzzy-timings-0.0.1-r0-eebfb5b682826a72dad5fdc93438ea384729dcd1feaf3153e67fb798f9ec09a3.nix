{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "fuzzy-timings";
        version = "0.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Tero Laitinen";
      author = "Tero Laitinen";
      homepage = "https://github.com/tlaitinen/fuzzy-timings";
      url = "";
      synopsis = "Translates high-level definitions of \"fuzzily\" scheduled objects (e.g. play this commercial 10 times per hour between 9:00-13:00) to a list of accurately scheduled objects using glpk-hs.";
      description = "The original use case of this package is to implement \"media planning\" in\nretail stores, that is, what should be played and when.  Accurately scheduled\nannouncements, fuzzily scheduled commercials and store opening hours are taken\ninto account.";
      buildType = "Simple";
    };
    components = {
      "fuzzy-timings" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.random)
          (hsPkgs.containers)
          (hsPkgs.glpk-hs)
          (hsPkgs.mtl)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.containers)
            (hsPkgs.time)
            (hsPkgs.fuzzy-timings)
            (hsPkgs.random)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }