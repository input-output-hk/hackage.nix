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
      specVersion = "1.2";
      identifier = { name = "pcap-enumerator"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "cutsea110@gmail.com";
      author = "Katsutoshi Itoh";
      homepage = "http://github.com/cutsea110/pcap-enumerator";
      url = "";
      synopsis = "Convert a pcap into an enumerator.";
      description = "pcap enumerator package";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."pcap" or (errorHandler.buildDepError "pcap"))
          (hsPkgs."enumerator" or (errorHandler.buildDepError "enumerator"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      };
    }