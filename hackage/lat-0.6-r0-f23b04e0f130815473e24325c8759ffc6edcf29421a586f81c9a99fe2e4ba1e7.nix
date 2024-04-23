{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
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
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."hsini" or (errorHandler.buildDepError "hsini"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."HDBC-sqlite3" or (errorHandler.buildDepError "HDBC-sqlite3"))
            (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."haxr" or (errorHandler.buildDepError "haxr"))
            (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
          ];
          buildable = true;
        };
      };
    };
  }