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
      specVersion = "1.2";
      identifier = { name = "Yogurt"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "Some Rights Reserved (CC) 2008-2009 Martijn van Steenbergen";
      maintainer = "martijn@van.steenbergen.nl";
      author = "Martijn van Steenbergen";
      homepage = "http://martijn.van.steenbergen.nl/projects/yogurt/";
      url = "";
      synopsis = "A MUD client library";
      description = "A MUD client library for Haskell. Features prioritized, regex-based hooks, variables and timers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."readline" or (errorHandler.buildDepError "readline"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
        buildable = true;
        };
      };
    }