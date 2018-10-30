{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "alea";
        version = "0.1.1.0";
      };
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
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.cmdargs)
            (hsPkgs.random)
          ];
        };
      };
    };
  }