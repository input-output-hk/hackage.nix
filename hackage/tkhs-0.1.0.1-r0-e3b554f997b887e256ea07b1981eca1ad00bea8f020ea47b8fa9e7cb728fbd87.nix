{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { test = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "tkhs";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Yusaku Hashimoto <nonowarn@gmail.com>";
      author = "Yusaku Hashimoto";
      homepage = "http://patch-tag.com/r/tkhs/snapshot/current/content/pretty/README";
      url = "";
      synopsis = "Simple Presentaion Utility";
      description = "If you want to do your presentation by terminal,\nor your slide is too simple to make with Powerpoint,\nor such softwares, It may be useful.";
      buildType = "Custom";
    };
    components = {
      exes = {
        "tkhs" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.pointedlist)
            (hsPkgs.mtl)
            (hsPkgs.vty)
            (hsPkgs.parsec)
            (hsPkgs.pretty)
            (hsPkgs.utf8-string)
          ];
        };
        "test" = {
          depends  = [
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }