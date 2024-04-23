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
      specVersion = "1.12";
      identifier = { name = "hhwloc"; version = "0.1.0"; };
      license = "MIT";
      copyright = "2020 (c) Daniel Taskoff";
      maintainer = "daniel.taskoff@gmail.com";
      author = "Daniel Taskoff";
      homepage = "https://github.com/dtaskoff/hhwloc#readme";
      url = "";
      synopsis = "Bindings to https://www.open-mpi.org/projects/hwloc";
      description = "Please see the README on GitHub at <https://github.com/dtaskoff/hhwloc#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }