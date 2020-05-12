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
    flags = { prof = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "PlayHangmanGame"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012 Haisheng Wu";
      maintainer = "freizl@gmail.com";
      author = "Haisheng Wu";
      homepage = "freizl.github.com";
      url = "";
      synopsis = "Play Hangman Game";
      description = "Write a program doing\n\n1. pick a list of words randomly\n\n2. play hangman agaist each of word\n\n3. the judgement are:\n- successful rate\n- wrong guess rate\n- running time";
      buildType = "Simple";
      };
    components = {
      exes = {
        "playHangmanGame" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }