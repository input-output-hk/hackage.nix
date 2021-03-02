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
      specVersion = "1.0";
      identifier = { name = "chp"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2008, University of Kent";
      maintainer = "neil@twistedsquare.com";
      author = "Neil Brown";
      homepage = "http://www.cs.kent.ac.uk/projects/ofa/chp/";
      url = "";
      synopsis = "An implementation of concurrency ideas from Communicating Sequential Processes";
      description = "The Communicating Haskell Processes (CHP) library is an\nimplementation of ideas from Hoare's Communicating\nSequential Processes.  More details and a tutorial can be\nfound at its homepage:\n<http://www.cs.kent.ac.uk/projects/ofa/chp/>\nThe library requires at least GHC 6.8.1.";
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