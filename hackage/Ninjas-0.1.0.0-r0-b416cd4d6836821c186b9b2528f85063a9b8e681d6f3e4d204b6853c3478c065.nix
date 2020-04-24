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
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."networked-game" or ((hsPkgs.pkgs-errors).buildDepError "networked-game"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }