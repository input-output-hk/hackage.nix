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
      specVersion = "3.0";
      identifier = { name = "wordlist"; version = "0.1.0.7"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Chris Martin <ch.martin@gmail.com>";
      author = "Chris Martin <ch.martin@gmail.com>";
      homepage = "https://github.com/chris-martin/wordlist";
      url = "";
      synopsis = "Command-line tool to get random words";
      description = "A command-line application that outputs a random list\nof words, designed to generate memorable passwords.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "wordlist" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."wordlist" or (errorHandler.buildDepError "wordlist"))
            ];
          buildable = true;
          };
        };
      };
    }