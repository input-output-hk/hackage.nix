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
      identifier = { name = "yam-job"; version = "0.1.9"; };
      license = "BSD-3-Clause";
      copyright = "(c) Daniel YU";
      maintainer = "Daniel YU <leptonyu@gmail.com>";
      author = "Daniel YU";
      homepage = "https://github.com/leptonyu/yam/tree/master/yam-job#readme";
      url = "";
      synopsis = "";
      description = "Job Module for Yam";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."yam-app" or (errorHandler.buildDepError "yam-app"))
          (hsPkgs."cron" or (errorHandler.buildDepError "cron"))
          ];
        buildable = true;
        };
      };
    }