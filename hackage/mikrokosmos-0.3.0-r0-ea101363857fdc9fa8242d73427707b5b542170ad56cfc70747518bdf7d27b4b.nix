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
      identifier = { name = "mikrokosmos"; version = "0.3.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "mromang08+github@gmail.com";
      author = "Mario Román (M42)";
      homepage = "https://github.com/M42/mikrokosmos";
      url = "";
      synopsis = "Lambda calculus interpreter";
      description = "A didactic untyped lambda calculus interpreter.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "mikrokosmos" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."multimap" or (errorHandler.buildDepError "multimap"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."options" or (errorHandler.buildDepError "options"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }