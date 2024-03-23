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
      identifier = { name = "test-certs"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "adetokunbo@emio.la";
      author = "Tim Emiola";
      homepage = "https://github.com/adetokunbo/test-certs#readme";
      url = "";
      synopsis = "create temporary SSL certificates in tests";
      description = "Its functions generate the certificates as files in a temporary directory.\n\n* Note: this package depends on [HsOpenSSL](https://hackage.haskell.org/package/HsOpenSSL).\n* It expects the openssl system libraries to be available on your system, this\n  is usually the case on most modern linux distributions.\n\nSee the [README](https://github.com/adetokunbo/test-certs#readme) for a usage example.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."HsOpenSSL" or (errorHandler.buildDepError "HsOpenSSL"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-certs" or (errorHandler.buildDepError "test-certs"))
            (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
            ];
          buildable = true;
          };
        };
      };
    }