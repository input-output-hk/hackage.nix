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
      identifier = { name = "executable-hash"; version = "0.2.0.4"; };
      license = "MIT";
      copyright = "2015 FP Complete";
      maintainer = "FP Complete <sloan@fpcomplete.com>";
      author = "Michael Sloan";
      homepage = "http://github.com/fpco/executable-hash";
      url = "";
      synopsis = "Provides the SHA1 hash of the program executable";
      description = "See README.md";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.buildToolDepError "base")))
        (hsPkgs.buildPackages.bytestring or (pkgs.buildPackages.bytestring or (errorHandler.buildToolDepError "bytestring")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.cryptohash or (pkgs.buildPackages.cryptohash or (errorHandler.buildToolDepError "cryptohash")))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory or (errorHandler.buildToolDepError "directory")))
        (hsPkgs.buildPackages.file-embed or (pkgs.buildPackages.file-embed or (errorHandler.buildToolDepError "file-embed")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or (errorHandler.buildToolDepError "filepath")))
        (hsPkgs.buildPackages.template-haskell or (pkgs.buildPackages.template-haskell or (errorHandler.buildToolDepError "template-haskell")))
        ];
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