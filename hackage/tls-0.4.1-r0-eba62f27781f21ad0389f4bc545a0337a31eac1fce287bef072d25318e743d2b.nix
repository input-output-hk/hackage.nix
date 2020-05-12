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
    flags = { test = false; executable = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "tls"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "Vincent Hanquez <vincent@snarc.org>";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "http://github.com/vincenthz/hs-tls";
      url = "";
      synopsis = "TLS/SSL protocol native implementation (Server and Client)";
      description = "native TLS protocol implementation, focusing on purity and more type-checking.\n\nCurrently implement the SSL3.0, TLS1.0 and TLS1.1 protocol.\nNot yet properly secure and missing some features.\nDo not yet use as replacement to more mature implementation.\n\nonly RSA supported as Key exchange for now.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
          (hsPkgs."cryptocipher" or (errorHandler.buildDepError "cryptocipher"))
          (hsPkgs."certificate" or (errorHandler.buildDepError "certificate"))
          ];
        buildable = true;
        };
      exes = {
        "stunnel" = {
          depends = (pkgs.lib).optionals (flags.executable) [
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            ];
          buildable = if flags.executable then true else false;
          };
        "Tests" = {
          depends = (pkgs.lib).optionals (flags.test) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = if flags.test then true else false;
          };
        };
      };
    }