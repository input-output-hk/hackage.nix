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
      specVersion = "1.10";
      identifier = { name = "executable-hash"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "2015 FP Complete";
      maintainer = "FP Complete <sloan@fpcomplete.com>";
      author = "Michael Sloan";
      homepage = "http://github.com/fpco/executable-hash";
      url = "";
      synopsis = "Provides the SHA1 hash of the program executable";
      description = "See README.md";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."executable-path" or (errorHandler.buildDepError "executable-path"))
          (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
      exes = {
        "inject-executable-hash" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."executable-hash" or (errorHandler.buildDepError "executable-hash"))
          ];
          buildable = true;
        };
      };
      tests = {
        "test-compute" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."executable-hash" or (errorHandler.buildDepError "executable-hash"))
          ];
          buildable = true;
        };
        "test-inject" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."executable-hash" or (errorHandler.buildDepError "executable-hash"))
          ];
          buildable = true;
        };
        "test-no-inject" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."executable-hash" or (errorHandler.buildDepError "executable-hash"))
          ];
          buildable = true;
        };
      };
    };
  }