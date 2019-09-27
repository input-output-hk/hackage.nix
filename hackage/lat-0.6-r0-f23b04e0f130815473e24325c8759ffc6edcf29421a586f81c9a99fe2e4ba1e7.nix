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
      identifier = { name = "lat"; version = "0.6"; };
      license = "GPL-3.0-only";
      copyright = "2010 Magnus Therning";
      maintainer = "magnus@therning.org";
      author = "Magnus Therning";
      homepage = "";
      url = "";
      synopsis = "Tool to track security alerts on LWN";
      description = "lat (Linux Alert Tracker) is a tool for tracking security alerts published\non Linux Weekly News (http://lwn.net/Security/).  It does this by scraping\ninformation from the site and recording it in a local database (sqlite3).\nAlerts are organised by distribution in the same way as on the LWN site.\nThey can also be filtered so that only alerts on packages of interest to\nthe user are shown.\nIt is also possible to directly from the tool raise a bug in a bugtracker\nbased on an alert.  (Only Jira is supported yet.)\nThe envisioned user is someone who's interested in following the security\nalerts of a specific distribution, e.g. someone who's basing a project on\na sub-set of packages from a distribution.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "lat" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ansi-wl-pprint" or (buildDepError "ansi-wl-pprint"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."hsini" or (buildDepError "hsini"))
            (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."HDBC-sqlite3" or (buildDepError "HDBC-sqlite3"))
            (hsPkgs."HDBC" or (buildDepError "HDBC"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."haxr" or (buildDepError "haxr"))
            (hsPkgs."tagsoup" or (buildDepError "tagsoup"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            ];
          buildable = true;
          };
        };
      };
    }