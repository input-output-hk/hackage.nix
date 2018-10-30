{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "threadPool";
        version = "0.2";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Brian Jaress <jaress@hawaii.edu>";
      author = "Brian Jaress";
      homepage = "http://brian-jaress.livejournal.com/";
      url = "";
      synopsis = "Runs other programs in the manner of a thread pool";
      description = "Takes a single, optional argument which is the number\nof threads (the default is three).  Give it the commands to run, one\nper line, through standard input.\nYou may use blank lines to divide the commands into sections.  The\ncommands in a section will not be started until all the commands in\nprevious sections are complete.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "threadpool" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.process)
          ];
        };
      };
    };
  }