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
      specVersion = "1.8";
      identifier = { name = "netrium"; version = "0.6.0"; };
      license = "MIT";
      copyright = "2009-2015 Anthony Waite, Dave Hewett, Shaun Laurens and other contributors";
      maintainer = "Well-Typed LLP";
      author = "Well-Typed LLP";
      homepage = "";
      url = "";
      synopsis = "Contract normaliser and simulator";
      description = "Netrium enables financial engineers to precisely describe and execute both simple and exotic contracts with both financial and physical delivery.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."HaXml" or (errorHandler.buildDepError "HaXml"))
          ];
        buildable = true;
        };
      exes = {
        "normalise" = {
          depends = [
            (hsPkgs."netrium" or (errorHandler.buildDepError "netrium"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."HaXml" or (errorHandler.buildDepError "HaXml"))
            ];
          buildable = true;
          };
        "simulate" = {
          depends = [
            (hsPkgs."netrium" or (errorHandler.buildDepError "netrium"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."HaXml" or (errorHandler.buildDepError "HaXml"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          buildable = true;
          };
        "visualise" = {
          depends = [
            (hsPkgs."netrium" or (errorHandler.buildDepError "netrium"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."HaXml" or (errorHandler.buildDepError "HaXml"))
            ];
          buildable = true;
          };
        };
      };
    }