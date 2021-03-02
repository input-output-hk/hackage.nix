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
      identifier = { name = "Etherbunny"; version = "0.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "nickburlett@mac.com";
      author = "Nick Burlett";
      homepage = "";
      url = "";
      synopsis = "A network analysis toolkit for haskell";
      description = "A network analysis toolkit for haskell, based on the Network.Pcap library. Currently not very useful, but getting there.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."pcap" or (errorHandler.buildDepError "pcap"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          ];
        buildable = true;
        };
      exes = {
        "etherbunny" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."pcap" or (errorHandler.buildDepError "pcap"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            ];
          libs = [ (pkgs."pcap" or (errorHandler.sysDepError "pcap")) ];
          buildable = true;
          };
        };
      };
    }