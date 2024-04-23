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
      specVersion = "1.6";
      identifier = { name = "ParserFunction"; version = "0.0.7"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ehaussecker@gmail.com";
      author = "Enzo Haussecker";
      homepage = "";
      url = "";
      synopsis = "Utilities for parsing and evaluating mathematical expressions.";
      description = "ParserFunction provides utilities for parsing and evaluating mathematical expressions. The central parsing\nfunction in this package is @stringToExpr@, which parses a string-expression and returns a maybe expression tree.\nThis tree is suitable for performing symbolic manipulation. Expressions can then be evaluated using the function\n@evalExpr@. If you wish to evaluate a string-expression without any intermediate operations, simply use the function\n@evalString@. Examples of these functions can be seen by viewing the source code of this module.";
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