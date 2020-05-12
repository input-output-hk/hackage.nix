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
      specVersion = "0";
      identifier = { name = "LambdaShell"; version = "0.9"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "robdockins AT fastmail DOT fm";
      author = "Robert Dockins";
      homepage = "";
      url = "";
      synopsis = "Simple shell for evaluating lambda expressions";
      description = "The lambda shell is a feature-rich shell environment and command-line tool for\nevaluating terms of the pure, untyped lambda calculus.  The Lambda\nShell builds on the shell creation framework Shellac, and showcases\nmost of Shellac's features.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "lambdaShell" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."readline" or (errorHandler.buildDepError "readline"))
            (hsPkgs."Shellac" or (errorHandler.buildDepError "Shellac"))
            (hsPkgs."Shellac-readline" or (errorHandler.buildDepError "Shellac-readline"))
            ];
          libs = [ (pkgs."readline" or (errorHandler.sysDepError "readline")) ];
          buildable = true;
          };
        };
      };
    }