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
      identifier = { name = "gopherbot"; version = "0.1.0"; };
      license = "LicenseRef-GPL";
      copyright = "Copyright (c) 2005-2006 John Goerzen";
      maintainer = "John Goerzen <jgoerzen@complete.org>";
      author = "John Goerzen";
      homepage = "";
      url = "";
      synopsis = "Spidering robot to download files from Gopherspace";
      description = "";
      buildType = "Custom";
      };
    components = {
      exes = {
        "gopherbot" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            (hsPkgs."HDBC-postgresql" or (errorHandler.buildDepError "HDBC-postgresql"))
            (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
            ];
          buildable = true;
          };
        };
      };
    }