{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "alea";
          version = "0.4.0.0";
        };
        license = "MIT";
        copyright = "(C) Michele Guerini Rocco 2015";
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
          alea = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.argparser
              hsPkgs.threefish
            ];
          };
        };
      };
    }