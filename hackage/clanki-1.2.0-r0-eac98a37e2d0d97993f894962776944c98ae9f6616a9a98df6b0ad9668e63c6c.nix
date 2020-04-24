{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "clanki"; version = "1.2.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "marcusbuffett@me.com";
      author = "Marcus Buffett";
      homepage = "";
      url = "";
      synopsis = "Command-line spaced-repetition software";
      description = "Command-line spaced-repetition learning software. CL (command line) + Anki (popular spaced-repetition software) = Clanki. Usage is fairly simple, just follow the instructions after running the program. Add a deck, add cards to the deck, then quiz whenever possible. The program will determine what cards need to be reviewed, using the Super Memo 2 algorithm.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "clanki" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
            ];
          buildable = true;
          };
        };
      };
    }