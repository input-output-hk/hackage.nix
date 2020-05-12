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
      specVersion = "1.2";
      identifier = { name = "LambdaShell"; version = "0.9.3"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "robdockins AT fastmail DOT fm";
      author = "Robert Dockins";
      homepage = "http://rwd.rdockins.name/lambda/home/";
      url = "";
      synopsis = "Simple shell for evaluating lambda expressions";
      description = "The lambda shell is a feature-rich shell environment and command-line tool for\nevaluating terms of the pure, untyped lambda calculus.  The Lambda\nShell builds on the shell creation framework Shellac, and showcases\nmost of Shellac's features.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "lambdaShell" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."Shellac" or (errorHandler.buildDepError "Shellac"))
            (hsPkgs."Shellac-compatline" or (errorHandler.buildDepError "Shellac-compatline"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "6.8") (hsPkgs."containers" or (errorHandler.buildDepError "containers"));
          buildable = true;
          };
        };
      };
    }