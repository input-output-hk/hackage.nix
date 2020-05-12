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
      identifier = { name = "cabal-mon"; version = "1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "iavor.diatchki@gmail.com";
      author = "Iavor S. Diatchki";
      homepage = "";
      url = "";
      synopsis = "A monitor for cabal builds";
      description = "A vty-based wrapper around the `fswatch` utility,\nwhich makes it easy to monitor parallel Cabal builds.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "cabal-mon" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            (hsPkgs."simple-get-opt" or (errorHandler.buildDepError "simple-get-opt"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }