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
      specVersion = "2.4";
      identifier = { name = "lambda"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "ombspring@gmail.com";
      author = "Owen Bechtel";
      homepage = "https://github.com/UnaryPlus/lambda";
      url = "";
      synopsis = "Interpreters for lambda calculus, calculus of constructions, and more";
      description = "A collection of interpreters, type checkers, and REPLs implemented in Haskell. Currently, the following languages are supported:\n\n* Untyped lambda calculus\n* SK combinator calculus\n* System F\n* Hindley-Milner type system\n* Calculus of constructions\n\nYou can access the different REPLs by passing an argument to the executable: \"lambda\", \"sk\", \"systemf\", \"hm\", or \"coc\". For more information, see the manual below.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "lambda" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }