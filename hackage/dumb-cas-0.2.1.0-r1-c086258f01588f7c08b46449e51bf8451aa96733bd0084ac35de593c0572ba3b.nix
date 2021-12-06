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
      identifier = { name = "dumb-cas"; version = "0.2.1.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "(@) jsag \$ hvl.no";
      author = "Justus Sagemüller";
      homepage = "https://github.com/leftaroundabout/dumb-cas";
      url = "";
      synopsis = "A computer “algebra” system that knows nothing about algebra, at the core.";
      description = "This is a framework for untyped, symbolic computations like a CAS\ndoes, without any baked-in rules whatsoever but the ability to\ndefine expressions very consisely, as well as any transformation\nrules you want. The idea is basically to combine the flexibility\nof a Lisp with the conciseness of a Regex engine, using syntax similar\nto Haskell's standard pattern matching.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."decimal-literals" or (errorHandler.buildDepError "decimal-literals"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."dumb-cas" or (errorHandler.buildDepError "dumb-cas"))
            ];
          buildable = true;
          };
        };
      };
    }