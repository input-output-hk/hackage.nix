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
      identifier = { name = "openssl-streams"; version = "1.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Gregory Collins <greg@gregorycollins.net>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "OpenSSL network support for io-streams.";
      description = "The openssl-streams library contains io-streams routines for secure\nnetworking using OpenSSL (by way of HsOpenSSL).\n\n/ChangeLog/\n[@1.1.0.2@] Fixed a bug in the \\\"connect\\\" routine uncovered by the recent\nnetwork upgrade.\n\n[@1.1.0.1@] Widened @network@ dependency to include 2.5.\n\n[@1.1.0.0@] Updated @openssl-streams@ to work with @io-streams@ 1.1.0.0.";
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