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
        name = "leapseconds-announced";
        version = "2017.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Bjorn Buckwalter 2009-2016";
      maintainer = "bjorn@buckwalter.se";
      author = "Bjorn Buckwalter";
      homepage = "https://github.com/bjornbm/leapseconds-announced";
      url = "";
      synopsis = "Leap seconds announced at library release time.";
      description = "Provides an easy to use static 'Data.Time.Clock.TAI.LeapSecondTable'\nwith the leap seconds announced at library release time.";
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
        "tests" = {
          depends = [
            (hsPkgs.leapseconds-announced)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.time)
          ];
        };
      };
    };
  }