{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hebrew-time";
        version = "0.1.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "https://github.com/snoyberg/hebrew-time";
      url = "";
      synopsis = "Hebrew dates and prayer times.";
      description = "Conversion to and from Hebrew dates.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.time)
        ];
      };
      tests = {
        "runtests" = {
          depends = [
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.HUnit)
            (hsPkgs.base)
            (hsPkgs.time)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }