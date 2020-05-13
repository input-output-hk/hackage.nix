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
      specVersion = "1.10";
      identifier = { name = "pid1"; version = "0.1.2.0"; };
      license = "MIT";
      copyright = "2016 Michael Snoyman";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/fpco/pid1#readme";
      url = "";
      synopsis = "Do signal handling and orphan reaping for Unix PID1 init processes";
      description = "Please see README.md or view Haddocks at <https://www.stackage.org/package/pid1>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
        buildable = true;
        };
      exes = {
        "pid1" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pid1" or (errorHandler.buildDepError "pid1"))
            ];
          buildable = true;
          };
        };
      };
    }