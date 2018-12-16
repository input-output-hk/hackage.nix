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
      specVersion = "1.2";
      identifier = {
        name = "hebrew-time";
        version = "0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://github.com/snoyberg/hebrew-time/tree/master";
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
          (hsPkgs.test-framework)
          (hsPkgs.test-framework-quickcheck)
          (hsPkgs.test-framework-hunit)
          (hsPkgs.HUnit)
          (hsPkgs.QuickCheck)
          (hsPkgs.bytestring-class)
          (hsPkgs.data-object)
        ];
      };
    };
  }