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
      identifier = { name = "rospkg"; version = "0.2.2.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Alexander Krupenkin";
      maintainer = "mail@akru.me";
      author = "Alexander Krupenkin";
      homepage = "https://github.com/RobiticsHS/rospkg#readme";
      url = "";
      synopsis = "ROS package system information ";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."fast-tagsoup" or (errorHandler.buildDepError "fast-tagsoup"))
          ];
        buildable = true;
        };
      exes = {
        "rospkg" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."rospkg" or (errorHandler.buildDepError "rospkg"))
            ];
          buildable = true;
          };
        };
      tests = {
        "rospkg-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."rospkg" or (errorHandler.buildDepError "rospkg"))
            ];
          buildable = true;
          };
        };
      };
    }