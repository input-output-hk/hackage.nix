{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "crackNum"; version = "2.4"; };
      license = "BSD-3-Clause";
      copyright = "Levent Erkok";
      maintainer = "erkokl@gmail.com";
      author = "Levent Erkok";
      homepage = "http://github.com/LeventErkok/CrackNum";
      url = "";
      synopsis = "Crack various integer, floating-point data formats";
      description = "Crack HP, SP and DP floats and 8, 16, 32, 64 bit words and integers.\n\nFor details, please see: <http://github.com/LeventErkok/crackNum/>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."FloatingHex" or (errorHandler.buildDepError "FloatingHex"))
          ];
        buildable = true;
        };
      exes = {
        "crackNum" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."FloatingHex" or (errorHandler.buildDepError "FloatingHex"))
            ];
          buildable = true;
          };
        };
      };
    }