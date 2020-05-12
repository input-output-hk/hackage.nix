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
      specVersion = "1.4";
      identifier = { name = "peg"; version = "0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "dustin.deweese@gmail.com";
      author = "Dustin DeWeese";
      homepage = "http://github.com/HackerFoo/peg";
      url = "";
      synopsis = "a lazy non-deterministic concatenative programming language";
      description = "Peg is a lazy non-deterministic concatenative programming language inspired by Haskell, Joy, and Prolog.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "peg" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."logict" or (errorHandler.buildDepError "logict"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            ];
          buildable = true;
          };
        };
      };
    }