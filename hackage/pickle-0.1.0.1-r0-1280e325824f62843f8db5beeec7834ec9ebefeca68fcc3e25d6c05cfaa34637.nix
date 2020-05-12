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
      specVersion = "2.4";
      identifier = { name = "pickle"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "Copyright 2019 Anduril Industries";
      maintainer = "bob.blackmon@ymail.com";
      author = "Bob Blackmon";
      homepage = "";
      url = "";
      synopsis = "Instant StatsD in Haskell";
      description = "Instant StatsD in Haskell";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }