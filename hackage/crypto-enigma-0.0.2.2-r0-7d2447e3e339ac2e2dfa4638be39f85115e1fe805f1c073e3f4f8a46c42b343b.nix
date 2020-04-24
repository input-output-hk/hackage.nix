{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.22";
      identifier = { name = "crypto-enigma"; version = "0.0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014-2015 Roy Levien";
      maintainer = "royl@aldaron.com";
      author = "Roy Levien";
      homepage = "https://github.com/orome/crypto-enigma";
      url = "";
      synopsis = "An Enigma machine simulator with display.";
      description = "The crypto-enigma package is an Enigma machine simulator\nwith rich display and machine state details.\n\nCurrently support is only provided for the machine models in most widespread general use\nduring the war years: the I, M3, and M4.\n\nFor basic functionality, including some introspection of machine state\nand the mappings performed, simply\n\n> > import Crypto.Enigma\n\nFor richer display functionality additionally\n\n> > import Crypto.Enigma.Display\n\n(Note that this package assumes support for combining Unicode, without which some output may\nappear garbled.)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."MissingH" or ((hsPkgs.pkgs-errors).buildDepError "MissingH"))
          ];
        buildable = true;
        };
      tests = {
        "crypto-enigma-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."crypto-enigma" or ((hsPkgs.pkgs-errors).buildDepError "crypto-enigma"))
            ];
          buildable = true;
          };
        };
      };
    }