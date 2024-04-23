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
      identifier = { name = "keyed-vals-mem"; version = "0.2.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "adetokunbo@emio.la";
      author = "Tim Emiola";
      homepage = "https://github.com/adetokunbo/keyed-vals#readme";
      url = "";
      synopsis = "Implements a keyed-vals Handle using in-process memory";
      description = "keyed-vals provides a typed interface to a storage backend that allows the\npath in the storage backend to be declaratively linked to the types of data\nstored via a straightforward typeclass declaration.\n\nRead this [short example](https://github.com/adetokunbo/keyed-vals/tree/main/keyed-vals#example)\nfor an introduction its usage.\n\nWhile the goal of [keyed-vals](https://hackage.haskell.org/package/keyed-vals) is\nto provide access to storage services like [Redis](https://redis.io), the\nabstract definition of __Handle__ also enables this in-process implementation.\n\nThis package, keyed-vals-mem, is intended as a drop-in replacement for use in\ntesting and rapid prototyping.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."keyed-vals" or (errorHandler.buildDepError "keyed-vals"))
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
            (hsPkgs."keyed-vals-mem" or (errorHandler.buildDepError "keyed-vals-mem"))
            (hsPkgs."keyed-vals-hspec-tests" or (errorHandler.buildDepError "keyed-vals-hspec-tests"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }