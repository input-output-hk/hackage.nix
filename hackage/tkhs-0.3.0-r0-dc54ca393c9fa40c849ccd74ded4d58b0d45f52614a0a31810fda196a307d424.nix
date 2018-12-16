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
      specVersion = "1.8";
      identifier = {
        name = "tkhs";
        version = "0.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Yusaku Hashimoto <nonowarn@gmail.com>";
      author = "Yusaku Hashimoto";
      homepage = "http://patch-tag.com/r/nonowarn/tkhs/snapshot/current/content/pretty/README";
      url = "";
      synopsis = "Simple Presentation Utility";
      description = "If you want to give your presentation in a terminal,\nor if PowerPoint would be overkill, you may find tkhs useful.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "tkhs" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.vty)
            (hsPkgs.parsec)
            (hsPkgs.pretty)
            (hsPkgs.utf8-string)
          ];
        };
      };
      tests = {
        "test-tkhs" = {
          depends = [
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }