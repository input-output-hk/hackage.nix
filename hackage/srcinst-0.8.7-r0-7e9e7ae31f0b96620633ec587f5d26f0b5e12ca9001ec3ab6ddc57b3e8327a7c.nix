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
      identifier = { name = "srcinst"; version = "0.8.7"; };
      license = "LicenseRef-GPL";
      copyright = "Copyright (c) 2005-2006 John Goerzen";
      maintainer = "John Goerzen <jgoerzen@complete.org>";
      author = "John Goerzen";
      homepage = "";
      url = "";
      synopsis = "Build and install Debian packages completely from source";
      description = "srcinst is used to build and install Debian packages completely from source.\nAll dependencies and build-dependencies are also built recursively from source.\nNo binary .debs are required to install packages with this tool; however,\nit does generate binary .debs for your use.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "srcinst" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            ];
          buildable = true;
          };
        };
      };
    }