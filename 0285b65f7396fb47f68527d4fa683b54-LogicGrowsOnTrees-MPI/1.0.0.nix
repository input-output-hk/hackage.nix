{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      warnings = false;
      tests = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "LogicGrowsOnTrees-MPI";
          version = "1.0.0";
        };
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
        LogicGrowsOnTrees-MPI = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.cmdtheline
            hsPkgs.containers
            hsPkgs.data-ivar
            hsPkgs.derive
            hsPkgs.hslogger
            hsPkgs.hslogger-template
            hsPkgs.MonadCatchIO-transformers
            hsPkgs.stm
            hsPkgs.transformers
            hsPkgs.LogicGrowsOnTrees
          ];
          libs = [ pkgs.mpi ];
        };
        exes = {
          test-trivial = {
            depends  = [
              hsPkgs.base
              hsPkgs.hslogger
              hsPkgs.LogicGrowsOnTrees
              hsPkgs.LogicGrowsOnTrees-MPI
            ];
            libs = [ pkgs.mpi ];
          };
          test-nqueens = {
            depends  = [
              hsPkgs.base
              hsPkgs.cereal
              hsPkgs.cmdtheline
              hsPkgs.hslogger
              hsPkgs.LogicGrowsOnTrees
              hsPkgs.LogicGrowsOnTrees-MPI
            ];
            libs = [ pkgs.mpi ];
          };
        };
      };
    }