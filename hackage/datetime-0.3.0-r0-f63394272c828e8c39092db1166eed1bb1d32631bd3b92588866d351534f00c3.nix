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
        name = "datetime";
        version = "0.3.0";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "hackage@stackbuilders.com";
      author = "Eric Sessoms <nubgames@gmail.com>";
      homepage = "http://github.com/stackbuilders/datetime";
      url = "";
      synopsis = "Utilities to make Data.Time.* easier to use (deprecated)";
      description = "Provides several utilities for easily converting among the\nvarious standard library Date and Time types, and for converting\nbetween these and standard external representations.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.old-locale)
          (hsPkgs.old-time)
          (hsPkgs.time)
        ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.datetime)
            (hsPkgs.old-locale)
            (hsPkgs.old-time)
            (hsPkgs.time)
            (hsPkgs.base)
            (hsPkgs.test-framework)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
      };
    };
  }