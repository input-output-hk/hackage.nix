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
      identifier = { name = "trajectory"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2011 Mike Burns";
      maintainer = "mike@mike-burns.com";
      author = "Mike Burns";
      homepage = "https://github.com/mike-burns/trajectory";
      url = "";
      synopsis = "Tools and a library for working with Trajectory.";
      description = "Trajectory <http://apptrajectory.com/> is a project\nestimation and management tool for project managers,\nproduct managers, developers, and designers. It is heavily\ninspired by, but improves upon, Basecamp and Pivotal\nTracker. Like Basecamp, it has a place to organize ideas\nand exchange free-form feedback; like Pivotal Tracker it\nhas the concept of stories with points instead of time\nestimations, and it calculates time estimations based on\npast performance. It also weds the two concepts,\nconnecting stories with ideas.\n\nThis is a collection of tools and libraries for interacting with Trajectory.\n\nIt provides the @lsstory@ tool, a command-line app that\ncan list stories, filtering by source idea, milestone,\npoint, assignment, whether design or development is\nneeded; it can filter on the state (unstarted, started,\nfinished, done); it can filter on the iteration. It can\nalso be used simply to tell you the next unstarted,\nunassigned development story to work on.\n\nTo build more with this package, look into the\n@Trajectory.API@ module.\n\nTrajectory is made by thoughtbot <http://thoughtbot.com/>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."http-enumerator" or (buildDepError "http-enumerator"))
          (hsPkgs."uri" or (buildDepError "uri"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          ];
        };
      exes = {
        "inittj" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."regexpr" or (buildDepError "regexpr"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            ];
          };
        "lsstory" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."uri" or (buildDepError "uri"))
            (hsPkgs."http-enumerator" or (buildDepError "http-enumerator"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            ];
          };
        };
      };
    }