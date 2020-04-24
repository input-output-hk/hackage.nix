{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "lat"; version = "0.5"; };
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
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
            (hsPkgs."HDBC" or ((hsPkgs.pkgs-errors).buildDepError "HDBC"))
            (hsPkgs."HDBC-sqlite3" or ((hsPkgs.pkgs-errors).buildDepError "HDBC-sqlite3"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            (hsPkgs."regex-compat" or ((hsPkgs.pkgs-errors).buildDepError "regex-compat"))
            (hsPkgs."tagsoup" or ((hsPkgs.pkgs-errors).buildDepError "tagsoup"))
            (hsPkgs."ConfigFile" or ((hsPkgs.pkgs-errors).buildDepError "ConfigFile"))
            (hsPkgs."haxr" or ((hsPkgs.pkgs-errors).buildDepError "haxr"))
            (hsPkgs."MissingH" or ((hsPkgs.pkgs-errors).buildDepError "MissingH"))
            (hsPkgs."wl-pprint" or ((hsPkgs.pkgs-errors).buildDepError "wl-pprint"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
            ];
          buildable = true;
          };
        };
      };
    }