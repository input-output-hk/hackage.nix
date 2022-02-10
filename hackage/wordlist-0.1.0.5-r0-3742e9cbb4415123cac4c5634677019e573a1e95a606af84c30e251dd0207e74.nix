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
      identifier = { name = "wordlist"; version = "0.1.0.5"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Chris Martin <ch.martin@gmail.com>";
      author = "Chris Martin <ch.martin@gmail.com>";
      homepage = "https://github.com/chris-martin/wordlist";
      url = "";
      synopsis = "Command-line tool to get random words";
      description = "A command-line application that outputs a random list\nof words, designed to generate memorable passwords.\n\n== Example usage\n\nDownload a list of words:\n\n> bash$ export WORD_LIST_PATH=\"$HOME/words\"\n> bash$ wget -O \"$WORD_LIST_PATH\" 'https://raw.githubusercontent.com/trezor/python-mnemonic/ec21884db9f3af236732121e7ccf97435b924915/mnemonic/wordlist/english.txt'\n\nBy default, @wordlist@ generates four words separated by spaces.\n\n> bash$ wordlist\n> afraid avoid sunset cactus\n\nThe number of words and the separator are customizable.\n\n> bash$ wordlist -n 3 -d '/'\n> kite/wire/impact\n\nFor full command-line documentation:\n\n> bash$ wordlist --help";
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