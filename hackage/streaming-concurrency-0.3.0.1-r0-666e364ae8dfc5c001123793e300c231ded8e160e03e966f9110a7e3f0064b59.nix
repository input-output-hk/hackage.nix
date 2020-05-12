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
      identifier = { name = "streaming-concurrency"; version = "0.3.0.1"; };
      license = "MIT";
      copyright = "Ivan Lazar Miljenovic";
      maintainer = "Ivan.Miljenovic@gmail.com";
      author = "Ivan Lazar Miljenovic";
      homepage = "";
      url = "";
      synopsis = "Concurrency support for the streaming ecosystem";
      description = "There are two primary higher-level use-cases for this library:\n\n1. Merge multiple @Stream@s together.\n\n2. A conceptual @Stream@-based equivalent to @parMap@ (albeit\nutilising concurrency rather than true parallelism).\n\nHowever, low-level functions are also exposed so you can construct\nyour own methods of concurrently using @Stream@s (and there are also\nnon-@Stream@-specific functions if you wish to use it with other data\ntypes).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."lifted-async" or (errorHandler.buildDepError "lifted-async"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."streaming" or (errorHandler.buildDepError "streaming"))
          (hsPkgs."streaming-with" or (errorHandler.buildDepError "streaming-with"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          ];
        buildable = true;
        };
      tests = {
        "merging" = {
          depends = [
            (hsPkgs."streaming-concurrency" or (errorHandler.buildDepError "streaming-concurrency"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."streaming" or (errorHandler.buildDepError "streaming"))
            ];
          buildable = true;
          };
        };
      };
    }