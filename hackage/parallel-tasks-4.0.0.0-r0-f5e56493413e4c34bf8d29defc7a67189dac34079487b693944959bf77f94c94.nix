{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."here" or ((hsPkgs.pkgs-errors).buildDepError "here"))
          (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."vector-algorithms" or ((hsPkgs.pkgs-errors).buildDepError "vector-algorithms"))
          ];
        buildable = true;
        };
      };
    }