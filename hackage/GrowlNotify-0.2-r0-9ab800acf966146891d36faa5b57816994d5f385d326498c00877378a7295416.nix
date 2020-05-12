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
      identifier = { name = "GrowlNotify"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nickburlett@mac.com";
      author = "Nick Burlett";
      homepage = "";
      url = "";
      synopsis = "Notification utility for Growl.";
      description = "Notification utility for Growl.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."Crypto" or (errorHandler.buildDepError "Crypto"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          ];
        buildable = true;
        };
      exes = {
        "growlnotify" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."Crypto" or (errorHandler.buildDepError "Crypto"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            ];
          libs = [ (pkgs."pcap" or (errorHandler.sysDepError "pcap")) ];
          buildable = true;
          };
        };
      };
    }