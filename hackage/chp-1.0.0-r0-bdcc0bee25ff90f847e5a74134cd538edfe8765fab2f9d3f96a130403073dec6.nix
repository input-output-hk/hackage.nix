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
      specVersion = "0";
      identifier = { name = "chp"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2008, University of Kent";
      maintainer = "neil@twistedsquare.com";
      author = "Neil Brown";
      homepage = "";
      url = "";
      synopsis = "Communicating Haskell Processes: an implementation of concurrency ideas from Communicating Sequential Processes";
      description = "Requires at least GHC 6.8.1";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          ];
        buildable = true;
        };
      };
    }