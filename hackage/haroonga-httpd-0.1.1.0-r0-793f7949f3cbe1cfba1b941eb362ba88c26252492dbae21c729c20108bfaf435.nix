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
      identifier = { name = "haroonga-httpd"; version = "0.1.1.0"; };
      license = "LGPL-2.1-only";
      copyright = "";
      maintainer = "cosmo0920.wp@gmail.com";
      author = "cosmo0920";
      homepage = "";
      url = "";
      synopsis = "Yet another Groonga http server.";
      description = "Yet another Groonga http server written in Haskell.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "haroonga-httpd" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."scotty" or (errorHandler.buildDepError "scotty"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."haroonga" or (errorHandler.buildDepError "haroonga"))
            ];
          buildable = true;
          };
        };
      };
    }