{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = {
        name = "time";
        version = "1.4.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<ashley@semantic.org>";
      author = "Ashley Yakeley";
      homepage = "http://semantic.org/TimeLib/";
      url = "";
      synopsis = "A time library";
      description = "A time library";
      buildType = "Configure";
    };
    components = {
      "time" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.old-locale)
        ] ++ pkgs.lib.optional (system.isWindows) (hsPkgs.Win32);
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.Cabal)
            (hsPkgs.old-locale)
            (hsPkgs.process)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.unix)
          ];
        };
      };
    };
  }