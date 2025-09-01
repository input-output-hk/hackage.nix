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
      specVersion = "3.0";
      identifier = { name = "croque-mort"; version = "0.1.0.0"; };
      license = "ISC";
      copyright = "";
      maintainer = "foss@difolco.dev";
      author = "Gautier DI FOLCO";
      homepage = "http://github.com/blackheaven/croque-mort";
      url = "";
      synopsis = "Dead simple broken links checker on local HTML folders";
      description = "Dead simple broken links checker on local HTML folders.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "croque-mort" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."html-entities" or (errorHandler.buildDepError "html-entities"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."poolboy" or (errorHandler.buildDepError "poolboy"))
            (hsPkgs."scalpel" or (errorHandler.buildDepError "scalpel"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }