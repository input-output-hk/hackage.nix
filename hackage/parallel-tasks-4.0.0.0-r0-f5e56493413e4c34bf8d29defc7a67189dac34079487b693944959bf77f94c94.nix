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
      specVersion = "1.8";
      identifier = { name = "parallel-tasks"; version = "4.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nccb@kent.ac.uk";
      author = "Neil Brown <nccb@kent.ac.uk>";
      homepage = "";
      url = "";
      synopsis = "";
      description = "This library is useful for running a large amount of parallel tasks\nthat run on top of the IO monad, executing them in batches from a work queue.\n\nIt has several features aimed at monitoring the progress of the tasks\nand tries to be reasonably efficient (in space and time) for large\nnumbers (millions) of tasks.  There is also caching support available so that the results of\nrunning the task can be preserved between runs of the same program, which\nis useful for doing scientific analysis.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."here" or (errorHandler.buildDepError "here"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-algorithms" or (errorHandler.buildDepError "vector-algorithms"))
        ];
        buildable = true;
      };
    };
  }