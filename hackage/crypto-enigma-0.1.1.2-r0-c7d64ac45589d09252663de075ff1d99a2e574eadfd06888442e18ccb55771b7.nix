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
      specVersion = "1.22";
      identifier = { name = "crypto-enigma"; version = "0.1.1.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014-2019 Roy Levien";
      maintainer = "royl@aldaron.com";
      author = "Roy Levien";
      homepage = "https://github.com/orome/crypto-enigma-hs";
      url = "";
      synopsis = "An Enigma machine simulator with display. ";
      description = "The crypto-enigma package is an Enigma machine simulator\nwith rich display and machine state details.\n\nCurrently support is only provided for the machine models in most widespread general use\nduring the war years: the I, M3, and M4.\n\nFor basic functionality, including some introspection of machine state\nand the mappings performed, simply\n\n> > import Crypto.Enigma\n\nFor richer display functionality additionally\n\n> > import Crypto.Enigma.Display\n\n(Note that this package assumes support for combining Unicode, without which some output may\nappear garbled.)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      exes = {
        "enigma" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."crypto-enigma" or (errorHandler.buildDepError "crypto-enigma"))
          ];
          buildable = true;
        };
      };
      tests = {
        "crypto-enigma-check" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."crypto-enigma" or (errorHandler.buildDepError "crypto-enigma"))
          ];
          buildable = true;
        };
        "crypto-enigma-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."crypto-enigma" or (errorHandler.buildDepError "crypto-enigma"))
          ];
          buildable = true;
        };
      };
    };
  }