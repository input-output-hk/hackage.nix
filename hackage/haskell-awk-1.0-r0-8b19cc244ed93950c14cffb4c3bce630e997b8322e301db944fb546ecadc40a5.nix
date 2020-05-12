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
      identifier = { name = "haskell-awk"; version = "1.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Mario Pastorelli <pastorelli.mario@gmail.com>,  Samuel Gélineau <gelisam@gmail.com>";
      author = "Mario Pastorelli <pastorelli.mario@gmail.com>,  Samuel Gélineau <gelisam@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Transform text from the command-line using Haskell expressions.";
      description = "Hawk is a command line utility to process streams of text\nusing Haskell code. It is intended to be used in a UNIX\npipeline. It offers a configuration system to personalize\nimported modules and a way to represent values on the console.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."stringsearch" or (errorHandler.buildDepError "stringsearch"))
          ];
        buildable = true;
        };
      exes = {
        "hawk" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."easy-file" or (errorHandler.buildDepError "easy-file"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
            (hsPkgs."MonadCatchIO-mtl" or (errorHandler.buildDepError "MonadCatchIO-mtl"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."stringsearch" or (errorHandler.buildDepError "stringsearch"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        };
      tests = {
        "reference" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."easy-file" or (errorHandler.buildDepError "easy-file"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."stringsearch" or (errorHandler.buildDepError "stringsearch"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }