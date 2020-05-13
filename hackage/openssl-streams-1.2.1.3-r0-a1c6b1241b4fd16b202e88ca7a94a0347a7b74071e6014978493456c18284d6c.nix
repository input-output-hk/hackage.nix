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
      identifier = { name = "openssl-streams"; version = "1.2.1.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Gregory Collins <greg@gregorycollins.net>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "OpenSSL network support for io-streams.";
      description = "The openssl-streams library contains io-streams routines for secure\nnetworking using OpenSSL (by way of HsOpenSSL).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."HsOpenSSL" or (errorHandler.buildDepError "HsOpenSSL"))
          (hsPkgs."io-streams" or (errorHandler.buildDepError "io-streams"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          ];
        buildable = true;
        };
      tests = {
        "testsuite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."HsOpenSSL" or (errorHandler.buildDepError "HsOpenSSL"))
            (hsPkgs."io-streams" or (errorHandler.buildDepError "io-streams"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }