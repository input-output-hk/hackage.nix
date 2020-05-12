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
      identifier = { name = "Dust-tools-pcap"; version = "1.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "brandon@ischool.utexas.edu";
      author = "Brandon Wiley";
      homepage = "";
      url = "";
      synopsis = "Network filtering exploration tools that rely on pcap";
      description = "A set of tools for exploring network filtering";
      buildType = "Simple";
      };
    components = {
      exes = {
        "replay-convert" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Dust" or (errorHandler.buildDepError "Dust"))
            (hsPkgs."Dust-tools" or (errorHandler.buildDepError "Dust-tools"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."entropy" or (errorHandler.buildDepError "entropy"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."random-extras" or (errorHandler.buildDepError "random-extras"))
            (hsPkgs."random-source" or (errorHandler.buildDepError "random-source"))
            (hsPkgs."random-fu" or (errorHandler.buildDepError "random-fu"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."pcap" or (errorHandler.buildDepError "pcap"))
            ];
          buildable = true;
          };
        "update" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Dust" or (errorHandler.buildDepError "Dust"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."entropy" or (errorHandler.buildDepError "entropy"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."random-extras" or (errorHandler.buildDepError "random-extras"))
            (hsPkgs."random-source" or (errorHandler.buildDepError "random-source"))
            (hsPkgs."random-fu" or (errorHandler.buildDepError "random-fu"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."pcap" or (errorHandler.buildDepError "pcap"))
            (hsPkgs."csv" or (errorHandler.buildDepError "csv"))
            ];
          buildable = true;
          };
        "export" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Dust" or (errorHandler.buildDepError "Dust"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."entropy" or (errorHandler.buildDepError "entropy"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."random-extras" or (errorHandler.buildDepError "random-extras"))
            (hsPkgs."random-source" or (errorHandler.buildDepError "random-source"))
            (hsPkgs."random-fu" or (errorHandler.buildDepError "random-fu"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."pcap" or (errorHandler.buildDepError "pcap"))
            (hsPkgs."csv" or (errorHandler.buildDepError "csv"))
            ];
          buildable = true;
          };
        "show" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Dust" or (errorHandler.buildDepError "Dust"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."entropy" or (errorHandler.buildDepError "entropy"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."random-extras" or (errorHandler.buildDepError "random-extras"))
            (hsPkgs."random-source" or (errorHandler.buildDepError "random-source"))
            (hsPkgs."random-fu" or (errorHandler.buildDepError "random-fu"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."pcap" or (errorHandler.buildDepError "pcap"))
            (hsPkgs."csv" or (errorHandler.buildDepError "csv"))
            ];
          buildable = true;
          };
        };
      };
    }