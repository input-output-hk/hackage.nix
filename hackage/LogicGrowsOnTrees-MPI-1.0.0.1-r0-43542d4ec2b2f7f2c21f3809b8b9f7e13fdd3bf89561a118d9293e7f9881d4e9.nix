let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { warnings = false; examples = false; tests = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "LogicGrowsOnTrees-MPI"; version = "1.0.0.1"; };
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."cmdtheline" or (buildDepError "cmdtheline"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."data-ivar" or (buildDepError "data-ivar"))
          (hsPkgs."derive" or (buildDepError "derive"))
          (hsPkgs."hslogger" or (buildDepError "hslogger"))
          (hsPkgs."hslogger-template" or (buildDepError "hslogger-template"))
          (hsPkgs."MonadCatchIO-transformers" or (buildDepError "MonadCatchIO-transformers"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."LogicGrowsOnTrees" or (buildDepError "LogicGrowsOnTrees"))
          ];
        libs = [ (pkgs."mpi" or (sysDepError "mpi")) ];
        buildable = true;
        };
      exes = {
        "count-all-trivial-tree-leavesl" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cmdtheline" or (buildDepError "cmdtheline"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            (hsPkgs."LogicGrowsOnTrees" or (buildDepError "LogicGrowsOnTrees"))
            (hsPkgs."LogicGrowsOnTrees-MPI" or (buildDepError "LogicGrowsOnTrees-MPI"))
            ];
          libs = [ (pkgs."mpi" or (sysDepError "mpi")) ];
          buildable = if flags.examples then true else false;
          };
        "test-trivial" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            (hsPkgs."LogicGrowsOnTrees" or (buildDepError "LogicGrowsOnTrees"))
            (hsPkgs."LogicGrowsOnTrees-MPI" or (buildDepError "LogicGrowsOnTrees-MPI"))
            ];
          libs = [ (pkgs."mpi" or (sysDepError "mpi")) ];
          buildable = if flags.tests then true else false;
          };
        "test-nqueens" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."cmdtheline" or (buildDepError "cmdtheline"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            (hsPkgs."LogicGrowsOnTrees" or (buildDepError "LogicGrowsOnTrees"))
            (hsPkgs."LogicGrowsOnTrees-MPI" or (buildDepError "LogicGrowsOnTrees-MPI"))
            ];
          libs = [ (pkgs."mpi" or (sysDepError "mpi")) ];
          buildable = if flags.tests then true else false;
          };
        };
      };
    }