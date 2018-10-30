{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      gui = true;
      cuda = true;
      opencl = false;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "accelerate-examples";
        version = "0.13.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>";
      author = "The Accelerate Team";
      homepage = "https://github.com/AccelerateHS/accelerate-examples";
      url = "";
      synopsis = "Examples using the Accelerate library";
      description = "This package demonstrates a number of computation kernels and applications\nshowcasing the /Accelerate/ language and associated backend implementations.\nIt is also used for performance and regression testing.\n\nRefer to the main /Accelerate/ package for more information:\n<http://hackage.haskell.org/package/accelerate>\n";
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
          ] ++ pkgs.lib.optionals (flags.cuda) [
            (hsPkgs.accelerate-cuda)
            (hsPkgs.cuda)
          ]) ++ pkgs.lib.optional (flags.opencl) (hsPkgs.accelerate-opencl);
        };
        "accelerate-examples" = {
          depends  = ([
            (hsPkgs.accelerate)
            (hsPkgs.accelerate-io)
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.attoparsec)
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
            (hsPkgs.repa)
            (hsPkgs.vector)
            (hsPkgs.vector-algorithms)
          ] ++ pkgs.lib.optional (flags.cuda) (hsPkgs.accelerate-cuda)) ++ pkgs.lib.optional (flags.opencl) (hsPkgs.accelerate-opencl);
          libs = [ (pkgs."stdc++") ];
        };
        "accelerate-crystal" = {
          depends  = ([
            (hsPkgs.accelerate)
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.fclabels)
            (hsPkgs.gloss)
          ] ++ pkgs.lib.optional (flags.cuda) (hsPkgs.accelerate-cuda)) ++ pkgs.lib.optional (flags.opencl) (hsPkgs.accelerate-opencl);
        };
        "accelerate-canny" = {
          depends  = ([
            (hsPkgs.accelerate)
            (hsPkgs.accelerate-io)
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.fclabels)
            (hsPkgs.repa)
            (hsPkgs.repa-io)
            (hsPkgs.vector)
          ] ++ pkgs.lib.optional (flags.cuda) (hsPkgs.accelerate-cuda)) ++ pkgs.lib.optional (flags.opencl) (hsPkgs.accelerate-opencl);
        };
        "accelerate-mandelbrot" = {
          depends  = ([
            (hsPkgs.accelerate)
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.fclabels)
            (hsPkgs.gloss)
          ] ++ pkgs.lib.optional (flags.cuda) (hsPkgs.accelerate-cuda)) ++ pkgs.lib.optional (flags.opencl) (hsPkgs.accelerate-opencl);
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
          ] ++ pkgs.lib.optional (flags.cuda) (hsPkgs.accelerate-cuda);
        };
        "accelerate-nbody" = {
          depends  = [
            (hsPkgs.accelerate)
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.fclabels)
            (hsPkgs.gloss)
          ] ++ pkgs.lib.optional (flags.cuda) (hsPkgs.accelerate-cuda);
        };
        "accelerate-smoothlife" = {
          depends  = [
            (hsPkgs.accelerate)
            (hsPkgs.accelerate-fft)
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.fclabels)
            (hsPkgs.gloss)
          ] ++ pkgs.lib.optional (flags.cuda) (hsPkgs.accelerate-cuda);
        };
        "accelerate-hashcat" = {
          depends  = [
            (hsPkgs.accelerate)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-lexing)
            (hsPkgs.cereal)
            (hsPkgs.criterion)
            (hsPkgs.fclabels)
          ] ++ pkgs.lib.optional (flags.cuda) (hsPkgs.accelerate-cuda);
        };
      };
    };
  }