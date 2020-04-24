{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { warnings = false; examples = false; tests = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "LogicGrowsOnTrees-MPI"; version = "1.0.0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Gregory Crosswhite <gcrosswhite@gmail.com>";
      author = "Gregory Crosswhite";
      homepage = "";
      url = "";
      synopsis = "an adapter for LogicGrowsOnTrees that uses MPI";
      description = "<http://gcross.github.io/LogicGrowsOnTrees-MPI IF YOU ARE READING THIS ON HACKAGE then click here to browse the package reference documentation.>\n(The package unfortunately cannot be built on the Hackage server because\nMPI is not installed on it.)\n\nThis package provides a adapter for the LogicGrowsOnTrees package that uses\nMPI for parallelism. See the module documentation for more details.\n\nNOTE:  You need to have an MPI implementation installed to use the package;\nno thread support is required, and it only uses very simple\nfunctionality so MPI 1.0 or 1.1 should suffice. Also, @mpi.h@ needs\nto be in the include path and a library named @mpi@ (@libmpi@ in\nunix) in the library path; if these files are not in their respective\npaths, you can add their directories to their respective search paths\nfor this package by using Cabal's respective\n@--extra-include-dirs=...@ and @--extra-lib-dirs=...@ options.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."cmdtheline" or ((hsPkgs.pkgs-errors).buildDepError "cmdtheline"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."data-ivar" or ((hsPkgs.pkgs-errors).buildDepError "data-ivar"))
          (hsPkgs."derive" or ((hsPkgs.pkgs-errors).buildDepError "derive"))
          (hsPkgs."hslogger" or ((hsPkgs.pkgs-errors).buildDepError "hslogger"))
          (hsPkgs."hslogger-template" or ((hsPkgs.pkgs-errors).buildDepError "hslogger-template"))
          (hsPkgs."MonadCatchIO-transformers" or ((hsPkgs.pkgs-errors).buildDepError "MonadCatchIO-transformers"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."LogicGrowsOnTrees" or ((hsPkgs.pkgs-errors).buildDepError "LogicGrowsOnTrees"))
          ];
        libs = [ (pkgs."mpi" or ((hsPkgs.pkgs-errors).sysDepError "mpi")) ];
        buildable = true;
        };
      exes = {
        "count-all-trivial-tree-leavesl" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cmdtheline" or ((hsPkgs.pkgs-errors).buildDepError "cmdtheline"))
            (hsPkgs."hslogger" or ((hsPkgs.pkgs-errors).buildDepError "hslogger"))
            (hsPkgs."LogicGrowsOnTrees" or ((hsPkgs.pkgs-errors).buildDepError "LogicGrowsOnTrees"))
            (hsPkgs."LogicGrowsOnTrees-MPI" or ((hsPkgs.pkgs-errors).buildDepError "LogicGrowsOnTrees-MPI"))
            ];
          libs = [ (pkgs."mpi" or ((hsPkgs.pkgs-errors).sysDepError "mpi")) ];
          buildable = if flags.examples then true else false;
          };
        "test-trivial" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hslogger" or ((hsPkgs.pkgs-errors).buildDepError "hslogger"))
            (hsPkgs."LogicGrowsOnTrees" or ((hsPkgs.pkgs-errors).buildDepError "LogicGrowsOnTrees"))
            (hsPkgs."LogicGrowsOnTrees-MPI" or ((hsPkgs.pkgs-errors).buildDepError "LogicGrowsOnTrees-MPI"))
            ];
          libs = [ (pkgs."mpi" or ((hsPkgs.pkgs-errors).sysDepError "mpi")) ];
          buildable = if flags.tests then true else false;
          };
        "test-nqueens" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
            (hsPkgs."cmdtheline" or ((hsPkgs.pkgs-errors).buildDepError "cmdtheline"))
            (hsPkgs."hslogger" or ((hsPkgs.pkgs-errors).buildDepError "hslogger"))
            (hsPkgs."LogicGrowsOnTrees" or ((hsPkgs.pkgs-errors).buildDepError "LogicGrowsOnTrees"))
            (hsPkgs."LogicGrowsOnTrees-MPI" or ((hsPkgs.pkgs-errors).buildDepError "LogicGrowsOnTrees-MPI"))
            ];
          libs = [ (pkgs."mpi" or ((hsPkgs.pkgs-errors).sysDepError "mpi")) ];
          buildable = if flags.tests then true else false;
          };
        };
      };
    }