{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "werewolf";
          version = "1.0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "public@hjwylde.com";
        author = "Henry J. Wylde";
        homepage = "https://github.com/hjwylde/werewolf";
        url = "";
        synopsis = "A game engine for playing werewolf within an arbitrary chat client";
        description = "A game engine for playing werewolf within an arbitrary chat client.\nWerewolf is a well known social party game, commonly also called Mafia.\nSee the <https://en.wikipedia.org/wiki/Mafia_(party_game) Wikipedia article> for a\nrundown on it's gameplay and history.";
        buildType = "Simple";
      };
      components = {
        werewolf = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.extra
            hsPkgs.filepath
            hsPkgs.lens
            hsPkgs.MonadRandom
            hsPkgs.mtl
            hsPkgs.text
            hsPkgs.transformers
          ];
        };
        exes = {
          werewolf = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.extra
              hsPkgs.filepath
              hsPkgs.lens
              hsPkgs.MonadRandom
              hsPkgs.mtl
              hsPkgs.optparse-applicative
              hsPkgs.random-shuffle
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.werewolf
            ];
          };
        };
        tests = {
          werewolf-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.extra
              hsPkgs.lens
              hsPkgs.MonadRandom
              hsPkgs.mtl
              hsPkgs.QuickCheck
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.text
              hsPkgs.werewolf
            ];
          };
        };
      };
    }