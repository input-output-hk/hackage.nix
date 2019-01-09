{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "Ninjas"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Eric Mertens 2013";
      maintainer = "emertens@gmail.com";
      author = "Eric Mertens";
      homepage = "http://github.com/glguy/ninjas";
      url = "";
      synopsis = "Ninja game";
      description = "A multiplayer game where you blend in as an NPC while trying to visit all of the ancient pillars. Press 'A' to attack, 'S' to drop smoke, 'N' for new game, 'ESC' to quit, click with your mouse to move.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "Ninjas" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.gloss)
            (hsPkgs.network)
            (hsPkgs.networked-game)
            (hsPkgs.random)
            ];
          };
        };
      };
    }