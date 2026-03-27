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
    flags = { asserts = false; };
    package = {
      specVersion = "3.4";
      identifier = { name = "io-classes"; version = "1.8.0.1"; };
      license = "Apache-2.0";
      copyright = "2019-2025 Input Output Global Inc (IOG)";
      maintainer = "Duncan Coutts duncan@well-typed.com, Marcin Szamotulski coot@coot.me";
      author = "Alexander Vieth, Duncan Coutts, Marcin Szamotulski, Neil Davies, Thomas Winant";
      homepage = "";
      url = "";
      synopsis = "Type classes for concurrency with STM, ST and timing";
      description = "IO Monad class hierarchy compatible with:\n\n  * [io-sim](https://hackage.haskell.org/package/io-sim),\n  * [base](https://hackage.haskell.org/package/base),\n  * [async](https://hackage.haskell.org/package/async),\n  * [stm](https://hackage.haskell.org/package/stm),\n  * [exceptions](https://hackage.haskell.org/package/exceptions) &\n  * [time](https://hackage.haskell.org/package/time)\n\npackages.\n\n= Sublibraries\n@io-classes@ provides non-standard extensions distributed in public\nsublibraries\n\n  * @io-classes:io-classes@ - the main library compatible with the above\n    packages\n  * @io-classes:strict-stm@ - strict @STM@ API\n  * @io-classes:strict-mvar@ - strict @MVar@ API\n  * @io-classes:si-timers@ - SI-unit based time / timers API, cancellable timers\n  * @io-classes:mtl@ - MTL instances, some of which are experiemental\n\n= Documentation\nHaddocks of all public sublibraries are published\n[here](https://input-output-hk.github.io/io-sim).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "9.10") (hsPkgs."ghc-internal" or (errorHandler.buildDepError "ghc-internal"));
        buildable = true;
      };
      sublibs = {
        "strict-stm" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."io-classes" or (errorHandler.buildDepError "io-classes"))
          ];
          buildable = true;
        };
        "strict-mvar" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."io-classes" or (errorHandler.buildDepError "io-classes"))
          ];
          buildable = true;
        };
        "si-timers" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."nothunks" or (errorHandler.buildDepError "nothunks"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."io-classes" or (errorHandler.buildDepError "io-classes"))
          ];
          buildable = true;
        };
        "mtl" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."io-classes" or (errorHandler.buildDepError "io-classes"))
            (hsPkgs."io-classes".components.sublibs.si-timers or (errorHandler.buildDepError "io-classes:si-timers"))
          ];
          buildable = true;
        };
        "testlib" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."nothunks" or (errorHandler.buildDepError "nothunks"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."io-classes".components.sublibs.strict-mvar or (errorHandler.buildDepError "io-classes:strict-mvar"))
          ];
          buildable = true;
        };
      };
      tests = {
        "test-strict-mvar" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."io-classes".components.sublibs.testlib or (errorHandler.buildDepError "io-classes:testlib"))
          ];
          buildable = true;
        };
        "test-si-timers" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."io-classes".components.sublibs.si-timers or (errorHandler.buildDepError "io-classes:si-timers"))
          ];
          buildable = true;
        };
      };
    };
  }