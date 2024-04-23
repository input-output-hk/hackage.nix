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
      identifier = { name = "hsns"; version = "0.5.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "austin@youareinferior.net";
      author = "Austin Seipp ";
      homepage = "";
      url = "";
      synopsis = "the haskell network sniffer";
      description = "a network sniffer written in a purely fun language";
      buildType = "Custom";
    };
    components = {
      exes = {
        "hsns" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."pcap" or (errorHandler.buildDepError "pcap"))
          ];
          buildable = true;
        };
      };
    };
  }