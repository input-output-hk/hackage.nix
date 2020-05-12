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
    flags = { openssl = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "tcp-streams"; version = "0.2.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "winterland1989@gmail.com";
      author = "winterland1989";
      homepage = "";
      url = "";
      synopsis = "One stop solution for tcp client and server with tls support.";
      description = "One stop solution for tcp client and server with tls support.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."io-streams" or (errorHandler.buildDepError "io-streams"))
          (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."x509" or (errorHandler.buildDepError "x509"))
          (hsPkgs."x509-system" or (errorHandler.buildDepError "x509-system"))
          (hsPkgs."x509-store" or (errorHandler.buildDepError "x509-store"))
          (hsPkgs."pem" or (errorHandler.buildDepError "pem"))
          ] ++ (pkgs.lib).optionals (flags.openssl) [
          (hsPkgs."HsOpenSSL" or (errorHandler.buildDepError "HsOpenSSL"))
          (hsPkgs."HsOpenSSL-x509-system" or (errorHandler.buildDepError "HsOpenSSL-x509-system"))
          ];
        buildable = true;
        };
      tests = {
        "testsuite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."io-streams" or (errorHandler.buildDepError "io-streams"))
            (hsPkgs."tcp-streams" or (errorHandler.buildDepError "tcp-streams"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            ];
          buildable = true;
          };
        };
      };
    }