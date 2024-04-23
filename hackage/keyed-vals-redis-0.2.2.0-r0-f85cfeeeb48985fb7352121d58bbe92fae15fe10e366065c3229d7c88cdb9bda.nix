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
      identifier = { name = "keyed-vals-redis"; version = "0.2.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "adetokunbo@emio.la";
      author = "Tim Emiola";
      homepage = "https://github.com/adetokunbo/keyed-vals#readme";
      url = "";
      synopsis = "Access Redis using a keyed-vals Handle";
      description = "[keyed-vals](https://hackage.haskell.org/package/keyed-vals) specifies\na focussed client of storage services like [Redis](https://redis.io).\n\nI.e, while Redis supports many features; the abstract Handle in keyed-vals\njust supports operations that access collections of key-values\n\nAlso, keyed-vals provides a typed interface to a storage backend that allows\nthe path in the storage backend to be declaratively linked to the types of\ndata stored via a straightforward typeclass declaration.\n\nRead this [short example](https://github.com/adetokunbo/keyed-vals/tree/main/keyed-vals#example)\nfor an introduction its usage.\n\nThis package, keyed-vals-redis, provides a concrete implementation of Handle\nthat uses Redis as the underlying storage service.";
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