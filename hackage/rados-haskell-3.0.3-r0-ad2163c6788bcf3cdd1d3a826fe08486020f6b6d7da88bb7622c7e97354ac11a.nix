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
    flags = { atomic_writes = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "rados-haskell"; version = "3.0.3"; };
      license = "BSD-3-Clause";
      copyright = "Anchor Hosting";
      maintainer = "pingu@ponies.io";
      author = "Christian Marie";
      homepage = "github";
      url = "";
      synopsis = "librados haskell bindings";
      description = "These bindings do not cover the entire API, they support\nread, write, stat, creation, and unlinking with shared\nlocks.\n\nYou can perform these actions with combinations of sync,\nasync, and atomic execution.\n\nThe \"System.Rados.Monadic\" module is recommended for\nsafety/ease of use.\n\nThe \"System.Rados.Base\" module is possibly more flexible\nbut requires you to clean up your own resources and track\na lot of state.\n\nNote: To use atomic writes, you must build with the\n/atomic_writes/ build flag.\n\nStability: These bindings are not as polished as they could be, but\nare in production use at Anchor Hosting as of Jan 2014.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
        ];
        libs = [ (pkgs."rados" or (errorHandler.sysDepError "rados")) ];
        buildable = true;
      };
      tests = {
        "check" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."rados-haskell" or (errorHandler.buildDepError "rados-haskell"))
          ];
          libs = [ (pkgs."rados" or (errorHandler.sysDepError "rados")) ];
          buildable = true;
        };
      };
      benchmarks = {
        "async" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."rados-haskell" or (errorHandler.buildDepError "rados-haskell"))
          ];
          buildable = true;
        };
        "concurrency" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."rados-haskell" or (errorHandler.buildDepError "rados-haskell"))
          ];
          buildable = true;
        };
      };
    };
  }