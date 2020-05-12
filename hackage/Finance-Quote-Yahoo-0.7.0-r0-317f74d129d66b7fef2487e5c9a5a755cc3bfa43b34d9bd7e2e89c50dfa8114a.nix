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
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "Finance-Quote-Yahoo"; version = "0.7.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@fastmail.fm";
      author = "brad clawsie";
      homepage = "http://www.b7j0c.org/stuff/haskell-yquote.xhtml";
      url = "";
      synopsis = "Obtain quote data from finance.yahoo.com";
      description = "Obtain quote data from finance.yahoo.com";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          ] ++ (if flags.splitbase
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        buildable = true;
        };
      };
    }