{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "time";
        version = "1.7";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<ashley@semantic.org>";
      author = "Ashley Yakeley";
      homepage = "https://github.com/haskell/time";
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
        ] ++ pkgs.lib.optional (system.isWindows) (hsPkgs.Win32);
      };
      tests = {
        "ShowDefaultTZAbbreviations" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.time)
          ];
        };
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.time)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.unix)
          ];
        };
      };
    };
  }