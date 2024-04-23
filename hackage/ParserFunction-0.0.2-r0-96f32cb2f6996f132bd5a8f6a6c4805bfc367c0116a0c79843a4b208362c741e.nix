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
      identifier = { name = "ParserFunction"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Enzo Haussecker <ehaussecker@gmail.com>";
      author = "Enzo Haussecker";
      homepage = "";
      url = "";
      synopsis = "Enzo Haussecker's algorithm for parsing functions.";
      description = "The centerpiece of this package is a function called \"evaluate\" (exported from Text.ParserCombinators.Parsec.EvaluateFunction), which parses a function (in the form of a string) and evaluates it at a given point. Examples of this function can be found by viewing the source code for this module.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
    };
  }