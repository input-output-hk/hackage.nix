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
      identifier = { name = "lambdacube"; version = "2008.12.24"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Lennart Augustsson <lennart@augustsson.net>";
      author = "Lennart Augustsson <lennart@augustsson.net>";
      homepage = "";
      url = "";
      synopsis = "A simple lambda cube type checker.";
      description = "A simple interactive lambda cube type checker and evaluator.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "cube" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."editline" or (errorHandler.buildDepError "editline"))
            ];
          buildable = true;
          };
        };
      };
    }