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
      identifier = { name = "pcap"; version = "0.2"; };
      license = "BSD-4-Clause";
      copyright = "";
      maintainer = "nickburlett@mac.com, dominic.steinitz@blueyonder.co.uk";
      author = "";
      homepage = "";
      url = "";
      synopsis = "pcap interface";
      description = "FFI Wrapper around libpcap";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
        ];
        buildable = true;
      };
    };
  }