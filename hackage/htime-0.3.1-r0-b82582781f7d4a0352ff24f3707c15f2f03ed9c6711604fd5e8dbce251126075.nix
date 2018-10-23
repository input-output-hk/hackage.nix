{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "htime";
        version = "0.3.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Universiteit Utrecht, 2012 University of Oxford";
      maintainer = "libraries@haskell.org";
      author = "José Pedro Magalhães";
      homepage = "";
      url = "";
      synopsis = "Timing utility for the command line";
      description = "Timing utility for the command line, like the Unix\n\"time\" command. Especially useful on systems which\ndo not have time, like Windows.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "htime" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.process)
            (hsPkgs.time)
          ];
        };
      };
    };
  }