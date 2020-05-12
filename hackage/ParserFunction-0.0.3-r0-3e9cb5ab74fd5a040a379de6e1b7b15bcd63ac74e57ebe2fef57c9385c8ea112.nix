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
      identifier = { name = "ParserFunction"; version = "0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "Enzo Haussecker";
      homepage = "";
      url = "";
      synopsis = "An algorithm for parsing Expressions.";
      description = "The centerpiece of this package is a function called \"expressionToDouble\", which parses an expression (in the form of a string) and returns a Double. Examples of this function can be found by viewing the source code for this module.";
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