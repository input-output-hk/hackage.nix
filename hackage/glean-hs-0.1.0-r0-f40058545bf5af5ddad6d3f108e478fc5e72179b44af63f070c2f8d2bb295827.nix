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
      identifier = { name = "glean-hs"; version = "0.1.0"; };
      license = "MIT";
      copyright = "2026 XF-Interchange LLC";
      maintainer = "dev@xf-interchange.ai";
      author = "XF-Interchange LLC";
      homepage = "https://github.com/XF-Interchange/glean-hs";
      url = "";
      synopsis = "Docker-free Haskell code indexing via Rust-native Glean substrate";
      description = "glean-hs provides a native Rust reimplementation of Meta Glean's C++\ndependency substrate (folly + RocksDB + fbthrift), enabling Haskell code\nindexing without Docker on macOS, Linux, and Windows.";
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
          (hsPkgs."hie-compat" or (errorHandler.buildDepError "hie-compat"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        libs = [ (pkgs."glean_hs" or (errorHandler.sysDepError "glean_hs")) ];
        buildable = true;
      };
      exes = {
        "glean-hs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."glean-hs" or (errorHandler.buildDepError "glean-hs"))
          ];
          buildable = true;
        };
      };
      tests = {
        "glean-hs-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."glean-hs" or (errorHandler.buildDepError "glean-hs"))
          ];
          buildable = true;
        };
      };
    };
  }