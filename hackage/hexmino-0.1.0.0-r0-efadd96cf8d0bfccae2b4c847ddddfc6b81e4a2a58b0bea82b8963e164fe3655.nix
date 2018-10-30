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
        name = "hexmino";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "pasqu4le@gmail.com";
      author = "pasqu4le";
      homepage = "https://github.com/pasqu4le/hexmino";
      url = "";
      synopsis = "A small game based on domino-like hexagonal tiles";
      description = "Hexmino is a small game where you have to put domino-like hexagonal tiles into a grid in as little time as possible";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hexmino" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.gloss)
            (hsPkgs.containers)
            (hsPkgs.random)
            (hsPkgs.optparse-applicative)
            (hsPkgs.directory)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }