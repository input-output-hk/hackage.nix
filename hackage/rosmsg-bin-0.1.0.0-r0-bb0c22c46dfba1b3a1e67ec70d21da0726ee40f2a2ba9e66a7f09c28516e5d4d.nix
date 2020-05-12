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
      identifier = { name = "rosmsg-bin"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Alexander Krupenkin";
      maintainer = "mail@akru.me";
      author = "Alexander Krupenkin";
      homepage = "https://github.com/RoboticsHS/rosmsg-bin#readme";
      url = "";
      synopsis = "ROS message management tools";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      exes = {
        "rosmsg" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."rospkg" or (errorHandler.buildDepError "rospkg"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          buildable = true;
          };
        "genhs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."stack" or (errorHandler.buildDepError "stack"))
            (hsPkgs."rospkg" or (errorHandler.buildDepError "rospkg"))
            (hsPkgs."rosmsg" or (errorHandler.buildDepError "rosmsg"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
            ];
          buildable = true;
          };
        };
      };
    }