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
      identifier = { name = "tasty-cache"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "(c) 2026 Noon van der Silk";
      maintainer = "Noon van der Silk <noonsilk@gmail.com>";
      author = "Noon van der Silk";
      homepage = "https://github.com/silky/tasty-cache";
      url = "";
      synopsis = "Tasty ingredient that skips unchanged tests using GHC HIE files";
      description = "A Tasty ingredient that fingerprints each test against its source bytes and\nthe transitive closure of its dependencies in the HIE identifier graph.\nTests whose fingerprint matches the cache are replaced with an instant-pass\nplaceholder; only stale tests execute.\n.\nAdd @-fwrite-ide-info -hiedir .hie@ to both your library and test-suite\nstanzas, then replace 'defaultMain' with 'defaultMainWithHieCache'.\n.\nRequires GHC >= 9.4 (tested on 9.4 through 9.14).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
        ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."tasty-cache" or (errorHandler.buildDepError "tasty-cache"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
          buildable = true;
        };
      };
    };
  }