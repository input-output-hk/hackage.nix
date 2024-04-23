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
    flags = { warnings = false; tests = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "LogicGrowsOnTrees-MPI"; version = "1.0.0"; };
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."cmdtheline" or (errorHandler.buildDepError "cmdtheline"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-ivar" or (errorHandler.buildDepError "data-ivar"))
          (hsPkgs."derive" or (errorHandler.buildDepError "derive"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          (hsPkgs."hslogger-template" or (errorHandler.buildDepError "hslogger-template"))
          (hsPkgs."MonadCatchIO-transformers" or (errorHandler.buildDepError "MonadCatchIO-transformers"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."LogicGrowsOnTrees" or (errorHandler.buildDepError "LogicGrowsOnTrees"))
        ];
        libs = [ (pkgs."mpi" or (errorHandler.sysDepError "mpi")) ];
        buildable = true;
      };
      exes = {
        "test-trivial" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."LogicGrowsOnTrees" or (errorHandler.buildDepError "LogicGrowsOnTrees"))
            (hsPkgs."LogicGrowsOnTrees-MPI" or (errorHandler.buildDepError "LogicGrowsOnTrees-MPI"))
          ];
          libs = [ (pkgs."mpi" or (errorHandler.sysDepError "mpi")) ];
          buildable = if flags.tests then true else false;
        };
        "test-nqueens" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."cmdtheline" or (errorHandler.buildDepError "cmdtheline"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."LogicGrowsOnTrees" or (errorHandler.buildDepError "LogicGrowsOnTrees"))
            (hsPkgs."LogicGrowsOnTrees-MPI" or (errorHandler.buildDepError "LogicGrowsOnTrees-MPI"))
          ];
          libs = [ (pkgs."mpi" or (errorHandler.sysDepError "mpi")) ];
          buildable = if flags.tests then true else false;
        };
      };
    };
  }