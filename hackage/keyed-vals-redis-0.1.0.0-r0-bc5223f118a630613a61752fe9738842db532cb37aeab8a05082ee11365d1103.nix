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
      identifier = { name = "keyed-vals-redis"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "adetokunbo@emio.la";
      author = "Tim Emiola";
      homepage = "https://github.com/adetokunbo/keyed-vals#readme";
      url = "";
      synopsis = "Access Redis using a keyed-vals Handle";
      description = "[keyed-vals](https://hackage.haskell.org/package/keyed-vals) specifies\na focussed client of storage services like [Redis](https://redis.io).\n\nI.e, while Redis supports many features; the abstract Handle in keyed-vals\njust supports operations that access collections of key-values\n\nThis package provides a concrete implementation of Handle that uses Redis as\nthe underlying storage service.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hedis" or (errorHandler.buildDepError "hedis"))
          (hsPkgs."keyed-vals" or (errorHandler.buildDepError "keyed-vals"))
          (hsPkgs."read-env-var" or (errorHandler.buildDepError "read-env-var"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
          ];
        buildable = true;
        };
      tests = {
        "integration-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."keyed-vals-hspec-tests" or (errorHandler.buildDepError "keyed-vals-hspec-tests"))
            (hsPkgs."keyed-vals-redis" or (errorHandler.buildDepError "keyed-vals-redis"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-tmp-proc" or (errorHandler.buildDepError "hspec-tmp-proc"))
            (hsPkgs."tmp-proc-redis" or (errorHandler.buildDepError "tmp-proc-redis"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }