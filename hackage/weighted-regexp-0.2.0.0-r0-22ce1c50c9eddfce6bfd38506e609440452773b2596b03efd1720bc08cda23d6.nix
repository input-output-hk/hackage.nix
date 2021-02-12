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
    flags = { quickcheck = false; criterion = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "weighted-regexp"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sebastian Fischer";
      author = "Thomas Wilke, Frank Huch, Sebastian Fischer";
      homepage = "http://sebfisch.github.com/haskell-regexp";
      url = "";
      synopsis = "Weighted Regular Expression Matcher";
      description = "Haskell implementation of a weighted regular expression\nmatcher with linear worst-case time and space bounds.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.happy.components.exes.happy or (pkgs.buildPackages.happy or (errorHandler.buildToolDepError "happy:happy")))
          ];
        buildable = true;
        };
      exes = {
        "quickcheck-re" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = if !flags.quickcheck then false else true;
          };
        "criterion-re" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            ];
          buildable = if !flags.criterion then false else true;
          };
        };
      };
    }