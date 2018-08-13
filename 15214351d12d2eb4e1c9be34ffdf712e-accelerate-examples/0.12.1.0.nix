{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      gui = true;
      cuda = true;
      opencl = true;
      io = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "accelerate-examples";
        version = "0.12.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>";
      author = "The Accelerate Team";
      homepage = "http://www.cse.unsw.edu.au/~chak/project/accelerate/";
      url = "";
      synopsis = "Examples using the Accelerate library";
      description = "This package defines a number of example programs for verification and\nperformance testing of the Accelerate language and associated backend\nimplementations. By default the package attempts to build with all available\nbackends, but this might not be desirable or even possible depending on your\navailable hardware. To disable a specific component, install with the extra\ncabal flag(s):\n\n. > cabal install accelerate-examples -f-opt\n\nWhere the available options are:\n\n* cuda: A parallel CUDA backend for NVIDIA GPUs\n\n* opencl: A parallel OpenCL backend\n\n* io: Extra tests for reading and writing arrays in various formats\n";
      buildType = "Simple";
    };
    components = {
      exes = {
        "accelerate-quickcheck" = {
          depends  = ([
            (hsPkgs.accelerate)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.random)
          ] ++ pkgs.lib.optionals (_flags.cuda) [
            (hsPkgs.accelerate-cuda)
            (hsPkgs.cuda)
          ]) ++ pkgs.lib.optional (_flags.opencl) (hsPkgs.accelerate-opencl);
        };
        "accelerate-examples" = {
          depends  = (([
            (hsPkgs.accelerate)
            (hsPkgs.array)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-lexing)
            (hsPkgs.cmdargs)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hashtables)
            (hsPkgs.mtl)
            (hsPkgs.mwc-random)
            (hsPkgs.pgm)
            (hsPkgs.pretty)
            (hsPkgs.vector)
            (hsPkgs.vector-algorithms)
          ] ++ pkgs.lib.optional (_flags.cuda) (hsPkgs.accelerate-cuda)) ++ pkgs.lib.optional (_flags.opencl) (hsPkgs.accelerate-opencl)) ++ pkgs.lib.optional (_flags.io) (hsPkgs.accelerate-io);
          libs = [ (pkgs."stdc++") ];
        };
        "accelerate-crystal" = {
          depends  = ([
            (hsPkgs.accelerate)
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.fclabels)
            (hsPkgs.gloss)
          ] ++ pkgs.lib.optional (_flags.cuda) (hsPkgs.accelerate-cuda)) ++ pkgs.lib.optional (_flags.opencl) (hsPkgs.accelerate-opencl);
        };
        "accelerate-mandelbrot" = {
          depends  = ([
            (hsPkgs.accelerate)
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.fclabels)
            (hsPkgs.gloss)
          ] ++ pkgs.lib.optional (_flags.cuda) (hsPkgs.accelerate-cuda)) ++ pkgs.lib.optional (_flags.opencl) (hsPkgs.accelerate-opencl);
        };
        "accelerate-fluid" = {
          depends  = [
            (hsPkgs.accelerate)
            (hsPkgs.accelerate-io)
            (hsPkgs.base)
            (hsPkgs.bmp)
            (hsPkgs.criterion)
            (hsPkgs.fclabels)
            (hsPkgs.gloss)
          ] ++ pkgs.lib.optional (_flags.cuda) (hsPkgs.accelerate-cuda);
        };
      };
    };
  }