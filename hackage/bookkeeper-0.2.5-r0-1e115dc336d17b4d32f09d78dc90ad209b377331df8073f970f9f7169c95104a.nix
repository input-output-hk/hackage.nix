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
      specVersion = "1.10";
      identifier = { name = "bookkeeper"; version = "0.2.5"; };
      license = "BSD-3-Clause";
      copyright = "(c) Julian K. Arni";
      maintainer = "jkarni@gmail.com";
      author = "Julian K. Arni";
      homepage = "http://github.com/turingjump/bookkeeper#readme";
      url = "";
      synopsis = "Anonymous records and overloaded labels";
      description = "Please see README.md for more information and examples.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."type-level-sets" or (errorHandler.buildDepError "type-level-sets"))
          ];
        buildable = true;
        };
      exes = {
        "readme" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bookkeeper" or (errorHandler.buildDepError "bookkeeper"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."markdown-unlit" or (errorHandler.buildDepError "markdown-unlit"))
            (hsPkgs."type-level-sets" or (errorHandler.buildDepError "type-level-sets"))
            ];
          buildable = true;
          };
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."type-level-sets" or (errorHandler.buildDepError "type-level-sets"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            ];
          buildable = true;
          };
        "spec" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bookkeeper" or (errorHandler.buildDepError "bookkeeper"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."type-level-sets" or (errorHandler.buildDepError "type-level-sets"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bookkeeper" or (errorHandler.buildDepError "bookkeeper"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."type-level-sets" or (errorHandler.buildDepError "type-level-sets"))
            ];
          buildable = true;
          };
        };
      };
    }