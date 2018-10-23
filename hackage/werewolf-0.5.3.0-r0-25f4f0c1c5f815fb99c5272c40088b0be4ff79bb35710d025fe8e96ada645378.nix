{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "werewolf";
        version = "0.5.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "public@hjwylde.com";
      author = "Henry J. Wylde";
      homepage = "https://github.com/hjwylde/werewolf";
      url = "";
      synopsis = "A game engine for playing werewolf within a chat client";
      description = "A game engine for playing werewolf within a chat client.\nThis engine is based off of the party game Mafia, also known as Werewolf.";
      buildType = "Simple";
    };
    components = {
      "werewolf" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.extra)
          (hsPkgs.filepath)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ];
      };
      exes = {
        "werewolf" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.extra)
            (hsPkgs.filepath)
            (hsPkgs.lens)
            (hsPkgs.MonadRandom)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.random-shuffle)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.werewolf)
          ];
        };
      };
      tests = {
        "werewolf-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.extra)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
            (hsPkgs.werewolf)
          ];
        };
      };
    };
  }