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
    flags = { buildexamples = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "Feval"; version = "1.0.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "anthonyburz@gmail.com";
      author = "Anthony Burzillo";
      homepage = "http://github.com/burz/Feval";
      url = "";
      synopsis = "Evaluation using F-Algebras";
      description = "Feval is a statically typed functional programming language that\nuses f-algebras as opposed to classic recursion to solve the problem\nof evaluation and typechecking, which allows the compiler to perform\nbetter optimizations.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "Feval" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
          buildable = true;
        };
        "examples" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
      };
    };
  }