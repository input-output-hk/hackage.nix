let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { database = false; webtools = false; renderercairo = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "L-seed"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Joachim Breitner <mail@joachim-breitner.de>";
      author = "Joachim Breitner <mail@joachim-breitner.de>";
      homepage = "http://www.entropia.de/wiki/L-seed";
      url = "";
      synopsis = "Plant growing programming game";
      description = "The players of this game will write code (the „genome“) that describes\nhow plants (the biological type, not the industrial) will grow. The\nplants will grow simultaneously on the screen (the „garden“), will\ncompete for light and will multiply. The players can not change the\ncode of a growing plant, but they do have the chance to update their\ncode for the next generation -- when a plant drops a seed, it will run\nthe newest code. All in all, the game aims to be slowly paced and\nrelaxing, something to just watch for a while and something that does\nnot need constant attention by the players.\n\nThis package contains the haskell programs, i.e. the game simulation\nwith the visual display. It can be used to locally test the plants.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."old-time" or (buildDepError "old-time"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          ] ++ (pkgs.lib).optionals (flags.renderercairo) [
          (hsPkgs."cairo" or (buildDepError "cairo"))
          (hsPkgs."gtk" or (buildDepError "gtk"))
          ]) ++ (pkgs.lib).optionals (flags.database) [
          (hsPkgs."HDBC-odbc" or (buildDepError "HDBC-odbc"))
          (hsPkgs."HDBC" or (buildDepError "HDBC"))
          (hsPkgs."random-shuffle" or (buildDepError "random-shuffle"))
          ]) ++ (pkgs.lib).optional (flags.webtools) (hsPkgs."json" or (buildDepError "json"));
        };
      exes = {
        "runGarden" = {};
        "renderAsPNG" = {};
        "validate" = {};
        "fastScorer" = {};
        "dbclient" = {};
        "dbscorer" = {};
        };
      };
    }