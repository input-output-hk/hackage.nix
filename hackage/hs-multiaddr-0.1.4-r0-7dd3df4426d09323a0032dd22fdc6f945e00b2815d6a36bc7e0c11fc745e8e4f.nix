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
      specVersion = "1.10";
      identifier = { name = "hs-multiaddr"; version = "0.1.4"; };
      license = "Apache-2.0";
      copyright = "(c) Matrix AI 2017";
      maintainer = "roger.qiu@matrix.ai";
      author = "CMCDragonkai,\nQuoc-An Ho";
      homepage = "https://github.com/MatrixAI/hs-multiaddr#readme";
      url = "";
      synopsis = "Multiaddr library";
      description = "Multiaddr is self-describing way to represent addresses that support any standard network protocol. Multiaddr has a binary packed format, and nice string representation. It is possible to encapsulate addresses within each other.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytes" or (errorHandler.buildDepError "bytes"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hs-multihash" or (errorHandler.buildDepError "hs-multihash"))
          (hsPkgs."iproute" or (errorHandler.buildDepError "iproute"))
          (hsPkgs."sandi" or (errorHandler.buildDepError "sandi"))
        ];
        buildable = true;
      };
      tests = {
        "hs-multiaddr-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."either-unwrap" or (errorHandler.buildDepError "either-unwrap"))
            (hsPkgs."hs-multiaddr" or (errorHandler.buildDepError "hs-multiaddr"))
            (hsPkgs."hs-multihash" or (errorHandler.buildDepError "hs-multihash"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."iproute" or (errorHandler.buildDepError "iproute"))
            (hsPkgs."sandi" or (errorHandler.buildDepError "sandi"))
          ];
          buildable = true;
        };
      };
    };
  }