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
      identifier = { name = "cached"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Guillaume Chérel";
      maintainer = "guillaume.cherel@iscpif.fr";
      author = "Guillaume Chérel";
      homepage = "https://github.com/guillaumecherel/cached#readme";
      url = "";
      synopsis = "Cache values to disk.";
      description = "The module `Data.Cached` lets you cache values to disk to avoid re-running\n(potentially long) computations between consecutive executions of your\nprogram. Cached values are recomputed only when needed, i.e. when other\ncached values on which they depend change. Independent computations are\nrun in parallel. It offers convenient fonctions for caching to text files,\nbut caching and uncaching using arbitrary IO actions is also possible.\n\nThe module was motivated by writing scientific data flows, simulation\nexperiments or data science scripts. Those often involve long\ncomputations and create \"flows\" where the output of some computation\nare the inputs of others, until final results are produced (values,\nfigures, statistical tests, etc.).\n\nSee the module \"Data.Cached\" documentation:";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
          (hsPkgs."shake" or (errorHandler.buildDepError "shake"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "cached-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cached" or (errorHandler.buildDepError "cached"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-assertions" or (errorHandler.buildDepError "quickcheck-assertions"))
            (hsPkgs."shake" or (errorHandler.buildDepError "shake"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }