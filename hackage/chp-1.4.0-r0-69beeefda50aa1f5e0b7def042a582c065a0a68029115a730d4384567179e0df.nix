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
      identifier = { name = "chp"; version = "1.4.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2008--2009, University of Kent";
      maintainer = "neil@twistedsquare.com";
      author = "Neil Brown";
      homepage = "http://www.cs.kent.ac.uk/projects/ofa/chp/";
      url = "";
      synopsis = "An implementation of concurrency ideas from Communicating Sequential Processes";
      description = "The Communicating Haskell Processes (CHP) library is an\nimplementation of message-passing concurrency ideas from\nHoare's Communicating Sequential Processes.  More details and\na tutorial can be found at its homepage:\n<http://www.cs.kent.ac.uk/projects/ofa/chp/>, and there is\nalso now a blog with examples of using the library:\n<http://chplib.wordpress.com/>.  The library requires at\nleast GHC 6.8.1.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          ];
        buildable = true;
        };
      };
    }