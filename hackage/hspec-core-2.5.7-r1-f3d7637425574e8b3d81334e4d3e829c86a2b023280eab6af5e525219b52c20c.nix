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
      specVersion = "1.12";
      identifier = { name = "hspec-core"; version = "2.5.7"; };
      license = "MIT";
      copyright = "(c) 2011-2018 Simon Hengel,\n(c) 2011-2012 Trystan Spangler,\n(c) 2011 Greg Weber";
      maintainer = "Simon Hengel <sol@typeful.net>";
      author = "";
      homepage = "http://hspec.github.io/";
      url = "";
      synopsis = "A Testing Framework for Haskell";
      description = "This package exposes internal types and functions that can be used to extend Hspec's functionality.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."call-stack" or (errorHandler.buildDepError "call-stack"))
          (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hspec-expectations" or (errorHandler.buildDepError "hspec-expectations"))
          (hsPkgs."quickcheck-io" or (errorHandler.buildDepError "quickcheck-io"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."setenv" or (errorHandler.buildDepError "setenv"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."tf-random" or (errorHandler.buildDepError "tf-random"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."call-stack" or (errorHandler.buildDepError "call-stack"))
            (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hspec-expectations" or (errorHandler.buildDepError "hspec-expectations"))
            (hsPkgs."hspec-meta" or (errorHandler.buildDepError "hspec-meta"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."quickcheck-io" or (errorHandler.buildDepError "quickcheck-io"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."setenv" or (errorHandler.buildDepError "setenv"))
            (hsPkgs."silently" or (errorHandler.buildDepError "silently"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."tf-random" or (errorHandler.buildDepError "tf-random"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-meta or (pkgs.buildPackages.hspec-meta or (errorHandler.buildToolDepError "hspec-meta")))
            ];
          buildable = true;
          };
        };
      };
    }