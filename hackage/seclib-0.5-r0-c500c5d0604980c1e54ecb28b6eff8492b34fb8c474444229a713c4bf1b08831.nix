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
      specVersion = "1.6";
      identifier = { name = "seclib"; version = "0.5"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008 ~ 2011 Alejandro Russo, Koen Claessen, John Hughes";
      maintainer = "Alejandro Russo < russo at chalmers dot se >";
      author = "Alejandro Russo, Koen Claessen, John Hughes";
      homepage = "";
      url = "";
      synopsis = "A lightweight library for Information-flow security in Haskell ";
      description = "The library is based on the paper\n/A Library for Light-weight Information-Flow Security in Haskell/ by Alejandro Russo, Koen Claessen\nand John Hughes. In Proceedings of the ACM SIGPLAN 2008 Haskell Symposium, Victoria, British Columbia,\nCanada, September 2008.\n<http://www.cse.chalmers.se/~russo/publications_files/haskell22Ext-russo.pdf>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          ];
        buildable = true;
        };
      };
    }