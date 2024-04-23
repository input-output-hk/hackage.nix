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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."http-enumerator" or (errorHandler.buildDepError "http-enumerator"))
          (hsPkgs."uri" or (errorHandler.buildDepError "uri"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
        ];
        buildable = true;
      };
      exes = {
        "inittj" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."regexpr" or (errorHandler.buildDepError "regexpr"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
          buildable = true;
        };
        "lsstory" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."uri" or (errorHandler.buildDepError "uri"))
            (hsPkgs."http-enumerator" or (errorHandler.buildDepError "http-enumerator"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
          buildable = true;
        };
      };
    };
  }