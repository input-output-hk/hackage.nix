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
      specVersion = "1.14";
      identifier = { name = "crackNum"; version = "1.2"; };
      license = "BSD-3-Clause";
      copyright = "Levent Erkok";
      maintainer = "erkokl@gmail.com";
      author = "Levent Erkok";
      homepage = "";
      url = "";
      synopsis = "Crack various integer, floating-point data formats";
      description = "Crack HP, SP and DP floats and 8, 16, 32, 64 bit words and integers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ieee754" or (errorHandler.buildDepError "ieee754"))
          (hsPkgs."data-binary-ieee754" or (errorHandler.buildDepError "data-binary-ieee754"))
          ];
        buildable = true;
        };
      exes = {
        "crackNum" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ieee754" or (errorHandler.buildDepError "ieee754"))
            (hsPkgs."data-binary-ieee754" or (errorHandler.buildDepError "data-binary-ieee754"))
            ];
          buildable = true;
          };
        };
      };
    }