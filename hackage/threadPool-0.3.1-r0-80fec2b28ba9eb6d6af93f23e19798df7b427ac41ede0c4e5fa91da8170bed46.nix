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
      specVersion = "1.2";
      identifier = { name = "threadPool"; version = "0.3.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Brian Jaress <bjaress@gmail.com>";
      author = "Brian Jaress";
      homepage = "http://bjaress.blogspot.com/";
      url = "";
      synopsis = "Runs other programs in the manner of a thread pool";
      description = "Takes an optional argument which is the number\nof threads (the default is three).  Give it the commands to run, one\nper line, through standard input.\nYou may use blank lines to divide the commands into sections.  The\ncommands in a section will not be started until all the commands in\nprevious sections are complete.  Each section can be given its own\nthread count.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "threadpool" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }