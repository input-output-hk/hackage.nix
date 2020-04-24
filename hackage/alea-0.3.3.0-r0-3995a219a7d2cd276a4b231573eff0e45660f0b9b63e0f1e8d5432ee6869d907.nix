{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "alea"; version = "0.3.3.0"; };
      license = "MIT";
      copyright = "(C) Michele Guerini Rocco 2014";
      maintainer = "micheleguerinirocco@me.com";
      author = "Rnhmjoj";
      homepage = "https://github.com/Rnhmjoj/alea";
      url = "";
      synopsis = "a diceware passphrase generator";
      description = "Alea is a utility that helps you generate diceware passphrases.\nYou can choose to roll the dice on your own or let the program\ngenerates the words for you.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "alea" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."argparser" or ((hsPkgs.pkgs-errors).buildDepError "argparser"))
            (hsPkgs."threefish" or ((hsPkgs.pkgs-errors).buildDepError "threefish"))
            ];
          buildable = true;
          };
        };
      };
    }