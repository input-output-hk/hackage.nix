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
      specVersion = "1.8";
      identifier = {
        name = "haskellscrabble";
        version = "0.1.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "gordonhughmartin@gmail.com";
      author = "Gordon Martin";
      homepage = "http://www.github.com/happy0/haskellscrabble";
      url = "";
      synopsis = "A scrabble library capturing the core game logic of scrabble.";
      description = "A scrabble library which enforces legal transitions between moves. Intended to facilitate the development of a playable game.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.random)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.QuickCheck)
          (hsPkgs.parsec)
          (hsPkgs.unordered-containers)
          (hsPkgs.semigroups)
          (hsPkgs.errors)
          (hsPkgs.safe)
        ];
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.haskellscrabble)
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.directory)
            (hsPkgs.containers)
            (hsPkgs.random)
            (hsPkgs.semigroups)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }