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
      identifier = { name = "glambda"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Richard Eisenberg <eir@cis.upenn.edu>";
      author = "Richard Eisenberg <eir@cis.upenn.edu>";
      homepage = "https://github.com/goldfirere/glambda";
      url = "";
      synopsis = "A simply typed lambda calculus interpreter, written with GADTs";
      description = "This is an interpreter for the simply-typed lambda calculus. It is\nwritten making heavy use of generalized algebraic datatypes (GADTs), and is\nmeant to serve as an example how how these GADTs can be useful. See\nthe GitHub repo for more information about the syntax for the language\nand interpreter commands.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
          (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
        buildable = true;
        };
      exes = {
        "glam" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."glambda" or (errorHandler.buildDepError "glambda"))
            ];
          buildable = true;
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."glambda" or (errorHandler.buildDepError "glambda"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
            (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }