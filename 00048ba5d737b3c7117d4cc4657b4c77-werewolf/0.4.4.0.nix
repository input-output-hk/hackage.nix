{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "werewolf";
          version = "0.4.4.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "public@hjwylde.com";
        author = "Henry J. Wylde";
        homepage = "https://github.com/hjwylde/werewolf";
        url = "";
        synopsis = "A game engine for running werewolf in a chat client";
        description = "This engine is based off of Werewolves of Millers Hollow\n(http://www.games-wiki.org/wiki/Werewolves_of_Millers_Hollow/).\nSee https://github.com/hjwylde/werewolf for help on writing chat interfaces.";
        buildType = "Simple";
      };
      components = {
        "werewolf" = {
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
            hsPkgs.random-shuffle
            hsPkgs.text
            hsPkgs.transformers
          ];
        };
        exes = {
          "werewolf" = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.extra
              hsPkgs.filepath
              hsPkgs.lens
              hsPkgs.mtl
              hsPkgs.optparse-applicative
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.werewolf
            ];
          };
        };
        tests = {
          "werewolf-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.extra
              hsPkgs.lens
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