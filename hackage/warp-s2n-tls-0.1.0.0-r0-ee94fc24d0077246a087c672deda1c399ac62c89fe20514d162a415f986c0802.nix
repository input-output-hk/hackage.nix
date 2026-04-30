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
      specVersion = "3.0";
      identifier = { name = "warp-s2n-tls"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "2026 Daniel Goertzen";
      maintainer = "daniel.goertzen@gmail.com";
      author = "Daniel Goertzen";
      homepage = "https://github.com/goertzenator/warp-s2n-tls";
      url = "";
      synopsis = "TLS support for Warp via s2n-tls";
      description = "This package provides TLS support for the Warp web server using\nthe s2n-tls library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."s2n-tls" or (errorHandler.buildDepError "s2n-tls"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."entropy" or (errorHandler.buildDepError "entropy"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."streaming-commons" or (errorHandler.buildDepError "streaming-commons"))
          (hsPkgs."unbounded-delays" or (errorHandler.buildDepError "unbounded-delays"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
        ];
        buildable = true;
      };
      tests = {
        "warp-s2n-tls-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."warp-s2n-tls" or (errorHandler.buildDepError "warp-s2n-tls"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."s2n-tls" or (errorHandler.buildDepError "s2n-tls"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
            (hsPkgs."x509-store" or (errorHandler.buildDepError "x509-store"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."connection" or (errorHandler.buildDepError "connection"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
          buildable = true;
        };
      };
    };
  }