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
      identifier = { name = "hs-multiaddr"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2017 Roger Qiu";
      maintainer = "roger.qiu@matrix.ai";
      author = "CMCDragonkai";
      homepage = "https://github.com/MatrixAI/haskell-multiaddr#readme";
      url = "";
      synopsis = "Multiaddr Library for LibP2P";
      description = "Multiaddr is self-describing way to represent addresses that support any standard network protocol.\nMultiaddr has a binary packed format, and nice string representation.\nIt is possible to encapsulate addresses within each other.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytes" or (errorHandler.buildDepError "bytes"))
          (hsPkgs."sandi" or (errorHandler.buildDepError "sandi"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."iproute" or (errorHandler.buildDepError "iproute"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."multihash" or (errorHandler.buildDepError "multihash"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."io-streams" or (errorHandler.buildDepError "io-streams"))
          ];
        buildable = true;
        };
      tests = {
        "haskell-multiaddr-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hs-multiaddr" or (errorHandler.buildDepError "hs-multiaddr"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."iproute" or (errorHandler.buildDepError "iproute"))
            (hsPkgs."sandi" or (errorHandler.buildDepError "sandi"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."multihash" or (errorHandler.buildDepError "multihash"))
            (hsPkgs."either-unwrap" or (errorHandler.buildDepError "either-unwrap"))
            ];
          buildable = true;
          };
        };
      };
    }