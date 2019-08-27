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
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "DAG-Tournament"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "Joachim Breitner 2009";
      maintainer = "Joachim Breitner <mail@joachim-breitner.de>";
      author = "Joachim Breitner <mail@joachim-breitner.de>";
      homepage = "";
      url = "";
      synopsis = "Real-Time Game Tournament Evaluator";
      description = "DAG-Tournament, where DAG stands for directed acyclic graph, is a graphical\nprogram to manage an informal tournament of games such as foosball. It is\ndesigned for open-for-all tournaments without schedule, for example to\nrecord all games as they happen in the free time program of a serious\nevent, such as a conference.\n\nGames can be entered as they happen. The program does not generate a\ncomplete ranking, but only visualizes what it knows about who is better\nthan who based on direct comparison, or a path of direct comparisons.\nCycles are broken at the edge of least significance. The visualisation is\nbaesd on springs and forces and updated in real time, already producing\nentertaining effects.\n\nDAG-Tournaments supports more than one tournament at the same time, e.g.\nfoosball and pool billard, and can switch between the two rankings with one\nkeypress, again showing an entaining shuffling of nodes until a stable\nstate is reached again.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "DAG-Tournament" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."gtk" or (buildDepError "gtk"))
            (hsPkgs."cairo" or (buildDepError "cairo"))
            ];
          };
        };
      };
    }