{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      test = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "haskell-mpi";
        version = "1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Bernard James Pope, Dmitry Astapov";
      maintainer = "florbitous@gmail.com";
      author = "Bernard James Pope (Bernie Pope)";
      homepage = "http://github.com/bjpop/haskell-mpi";
      url = "";
      synopsis = "Distributed parallel programming in Haskell using MPI.";
      description = "MPI is defined by the Message-Passing Interface Standard,\nas specified by the Message Passing Interface Forum. The latest release\nof the standard is known as MPI-2. These Haskell\nbindings are designed to work with any standards compliant\nimplementation of MPI-2. Examples are MPICH2:\n<http://www.mcs.anl.gov/research/projects/mpich2> and\nOpenMPI: <http://www.open-mpi.org>.\n\nIn addition to reading these documents, users may also find it\nbeneficial to consult the MPI-2 standard documentation provided by the\nMPI Forum: <http://www.mpi-forum.org>, and also the documentation for\nthe MPI implementation linked to this library (that is, the MPI\nimplementation that was chosen when this Haskell library was compiled).\n\n\"Control.Parallel.MPI.Fast\" contains a high-performance interface\nfor working with (possibly mutable) arrays of storable Haskell data types.\n\n\"Control.Parallel.MPI.Simple\" contains a convenient (but slower)\ninterface for sending arbitrary serializable Haskell data values as messages.\n\n\"Control.Parallel.MPI.Internal\" contains a direct binding to the\nC interface.\n\n\"Control.Parallel.MPI.Base\" contains essential MPI functionality\nwhich is independent of the message passing API. This is re-exported\nby the Fast and Simple modules, and usually does not need to be\nexplcitly imported itself.\n\nNotable differences between Haskell-MPI and the standard C interface to MPI:\n\n1. Some collective message passing operations are split into send\nand receive parts to facilitate a more idiomatic Haskell style of programming.\nFor example, C provides the @MPI_Gather@ function which is called\nby all processes participating in the communication, whereas\nHaskell-MPI provides 'gatherSend' and 'gatherRecv' which are called\nby the sending and receiving processes respectively.\n\n2. The order of arguments for some functions is changed to allow\nfor the most common patterns of partial function application.\n\n3. Errors are raised as exceptions rather than return codes (assuming\nthat the error handler to 'errorsThrowExceptions', otherwise errors\nwill terminate the computation just like C interface).\n\nBelow is a small but complete MPI program. Process 1 sends the message\n@\\\"Hello World\\\"@ to process 0, which in turn receives the message and\nprints it to standard output. All other processes, if there are any,\ndo nothing.\n\n>module Main where\n>\n>import Control.Parallel.MPI.Simple (mpiWorld, commWorld, unitTag, send, recv)\n>\n>main :: IO ()\n>main = mpiWorld \$ \\size rank ->\n>   if size < 2\n>      then putStrLn \"At least two processes are needed\"\n>      else case rank of\n>         0 -> do (msg, _status) <- recv commWorld 1 unitTag\n>                 putStrLn msg\n>         1 -> send commWorld 0 unitTag \"Hello World\"\n>         _ -> return ()";
      buildType = "Simple";
    };
    components = {
      "haskell-mpi" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell98)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.extensible-exceptions)
          (hsPkgs.array)
        ];
        libs = [ (pkgs."mpi") ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs)
        ];
      };
      exes = {
        "haskell-mpi-testsuite" = {
          depends  = pkgs.lib.optionals (_flags.test) [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.testrunner)
            (hsPkgs.hpc)
            (hsPkgs.unix)
          ];
          libs = [ (pkgs."mpi") ];
          build-tools = [
            (hsPkgs.buildPackages.c2hs)
          ];
        };
        "haskell-mpi-comprunclean" = {
          depends  = pkgs.lib.optionals (_flags.test) [
            (hsPkgs.base)
            (hsPkgs.process)
          ];
        };
      };
    };
  }