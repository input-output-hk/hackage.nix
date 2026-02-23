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
    flags = { pedantic = false; wasm = false; };
    package = {
      specVersion = "3.12";
      identifier = { name = "scrod"; version = "0.2026.2.21"; };
      license = "0BSD";
      copyright = "";
      maintainer = "Taylor Fausak";
      author = "";
      homepage = "https://scrod.fyi";
      url = "";
      synopsis = "Worse Haskell documentation";
      description = "Scrod generates documentation for Haskell modules, similar to Haddock. Unlike\nHaddock, it only parses the input rather than requiring a full build. This\nmakes it faster but less accurate.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Cabal-syntax" or (errorHandler.buildDepError "Cabal-syntax"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghc-boot-th" or (errorHandler.buildDepError "ghc-boot-th"))
          (hsPkgs."haddock-library" or (errorHandler.buildDepError "haddock-library"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      exes = {
        "scrod" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."scrod" or (errorHandler.buildDepError "scrod"))
          ];
          buildable = true;
        };
        "scrod-wasm" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."scrod" or (errorHandler.buildDepError "scrod"))
            (hsPkgs."ghc-experimental" or (errorHandler.buildDepError "ghc-experimental"))
          ];
          buildable = if !flags.wasm then false else true;
        };
        "scrod-wasi" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."scrod" or (errorHandler.buildDepError "scrod"))
          ];
          buildable = if !flags.wasm then false else true;
        };
      };
      tests = {
        "scrod-test-suite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."scrod" or (errorHandler.buildDepError "scrod"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "scrod-benchmark" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."scrod" or (errorHandler.buildDepError "scrod"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
          ];
          buildable = true;
        };
      };
    };
  }