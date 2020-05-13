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
      identifier = { name = "Spock-worker"; version = "0.3.0.0"; };
      license = "MIT";
      copyright = "(c) 2014 Alexander Thiemann";
      maintainer = "mail@athiemann.net";
      author = "Alexander Thiemann <mail@athiemann.net>";
      homepage = "http://github.com/agrafix/Spock-worker";
      url = "";
      synopsis = "Background workers for Spock";
      description = "Adds a background-job queue to Spock";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Spock" or (errorHandler.buildDepError "Spock"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "SpockWorkerTests" = {
          depends = [
            (hsPkgs."HTF" or (errorHandler.buildDepError "HTF"))
            (hsPkgs."Spock-worker" or (errorHandler.buildDepError "Spock-worker"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }