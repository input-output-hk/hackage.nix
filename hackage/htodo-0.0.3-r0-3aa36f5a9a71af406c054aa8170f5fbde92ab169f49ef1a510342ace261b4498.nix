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
    flags = { safe = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "htodo"; version = "0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013 Yoichi Hirai";
      maintainer = "Yoichi Hirai <i@yoichihirai.com>";
      author = "Yoichi Hirai";
      homepage = "http://github.com/pirapira/htodo";
      url = "";
      synopsis = "A todo application.";
      description = "A todo application.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "htodo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HDBC-sqlite3" or (errorHandler.buildDepError "HDBC-sqlite3"))
            (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
            ];
          buildable = true;
          };
        };
      };
    }