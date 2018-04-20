{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "trajectory";
          version = "0.1.0.0";
        };
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
        trajectory = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.http-enumerator
            hsPkgs.uri
            hsPkgs.http-types
          ];
        };
        exes = {
          inittj = {
            depends  = [
              hsPkgs.base
              hsPkgs.regexpr
              hsPkgs.aeson
              hsPkgs.attoparsec
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.containers
              hsPkgs.cmdargs
              hsPkgs.unordered-containers
            ];
          };
          lsstory = {
            depends  = [
              hsPkgs.base
              hsPkgs.uri
              hsPkgs.http-enumerator
              hsPkgs.bytestring
              hsPkgs.aeson
              hsPkgs.attoparsec
              hsPkgs.http-types
              hsPkgs.text
              hsPkgs.containers
              hsPkgs.cmdargs
              hsPkgs.unordered-containers
            ];
          };
        };
      };
    }