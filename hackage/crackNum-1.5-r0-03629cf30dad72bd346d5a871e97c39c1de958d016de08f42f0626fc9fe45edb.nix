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
        name = "crackNum";
        version = "1.5";
      };
      license = "BSD-3-Clause";
      copyright = "Levent Erkok";
      maintainer = "erkokl@gmail.com";
      author = "Levent Erkok";
      homepage = "";
      url = "";
      synopsis = "Crack various integer, floating-point data formats";
      description = "Crack HP, SP and DP floats and 8, 16, 32, 64 bit words and integers.\n\nFor details, please see: <http://github.com/LeventErkok/crackNum/>";
      buildType = "Simple";
    };
    components = {
      "crackNum" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ieee754)
          (hsPkgs.data-binary-ieee754)
        ];
      };
      exes = {
        "crackNum" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ieee754)
            (hsPkgs.data-binary-ieee754)
          ];
        };
      };
    };
  }