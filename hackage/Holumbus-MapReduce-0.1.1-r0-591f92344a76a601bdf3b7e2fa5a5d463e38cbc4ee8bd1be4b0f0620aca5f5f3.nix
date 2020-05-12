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
      identifier = { name = "Holumbus-MapReduce"; version = "0.1.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2010 Stefan Schmidt, Uwe Schmidt, Sebastian Reese";
      maintainer = "Stefan Schmidt <sts@holumbus.org>";
      author = "Uwe Schmidt, Stefan Schmidt";
      homepage = "http://holumbus.fh-wedel.de";
      url = "";
      synopsis = "a distributed MapReduce framework";
      description = "This package contains a library and tools for the\ncreation of distributed MapReduce applications.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."Holumbus-Distribution" or (errorHandler.buildDepError "Holumbus-Distribution"))
          (hsPkgs."Holumbus-Storage" or (errorHandler.buildDepError "Holumbus-Storage"))
          (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
          (hsPkgs."readline" or (errorHandler.buildDepError "readline"))
          ];
        buildable = true;
        };
      exes = {
        "Master" = { buildable = true; };
        "MasterDaemon" = { buildable = true; };
        };
      };
    }