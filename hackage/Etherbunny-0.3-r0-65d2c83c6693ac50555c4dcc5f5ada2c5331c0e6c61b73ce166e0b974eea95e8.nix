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
      identifier = { name = "Etherbunny"; version = "0.3"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "nickburlett@mac.com";
      author = "Nick Burlett";
      homepage = "http://etherbunny.anytini.com/";
      url = "";
      synopsis = "A network analysis toolkit for Haskell";
      description = "A network analysis toolkit for Haskell, based on the Network.Pcap library. Currently not very useful, but getting there.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."pcap" or (errorHandler.buildDepError "pcap"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      exes = {
        "etherbunny" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."pcap" or (errorHandler.buildDepError "pcap"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          libs = [ (pkgs."pcap" or (errorHandler.sysDepError "pcap")) ];
          buildable = true;
          };
        };
      };
    }