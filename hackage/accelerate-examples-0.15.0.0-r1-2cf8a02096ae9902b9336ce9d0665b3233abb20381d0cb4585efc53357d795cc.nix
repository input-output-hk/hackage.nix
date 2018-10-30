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
      ekg = true;
      cuda = true;
      opencl = false;
      llvm-cpu = true;
      llvm-gpu = true;
      llvm-multi = true;
      nofib = true;
      smvm = true;
      crystal = true;
      canny = true;
      mandelbrot = true;
      fluid = true;
      nbody = true;
      smoothlife = true;
      hashcat = true;
      fft = true;
      pagerank = true;
      ray = true;
      kmeans = true;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "accelerate-examples";
        version = "0.15.0.0";
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
        "accelerate-nofib" = {
          depends  = (((pkgs.lib.optional (flags.cuda) (hsPkgs.accelerate-cuda) ++ pkgs.lib.optional (flags.llvm-cpu) (hsPkgs.accelerate-llvm-native)) ++ pkgs.lib.optional (flags.llvm-gpu) (hsPkgs.accelerate-llvm-ptx)) ++ pkgs.lib.optional (flags.ekg) (hsPkgs.ekg)) ++ pkgs.lib.optionals (!(!flags.nofib)) [
            (hsPkgs.accelerate)
            (hsPkgs.accelerate-fft)
            (hsPkgs.accelerate-io)
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.fclabels)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.random)
          ];
          libs = [ (pkgs."stdc++") ];
        };
        "accelerate-smvm" = {
          depends  = (((pkgs.lib.optional (flags.cuda) (hsPkgs.accelerate-cuda) ++ pkgs.lib.optional (flags.llvm-cpu) (hsPkgs.accelerate-llvm-native)) ++ pkgs.lib.optional (flags.llvm-gpu) (hsPkgs.accelerate-llvm-ptx)) ++ pkgs.lib.optional (flags.ekg) (hsPkgs.ekg)) ++ pkgs.lib.optionals (!(!flags.smvm)) [
            (hsPkgs.accelerate)
            (hsPkgs.base)
            (hsPkgs.attoparsec)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-lexing)
            (hsPkgs.criterion)
            (hsPkgs.fclabels)
            (hsPkgs.primitive)
            (hsPkgs.mwc-random)
            (hsPkgs.vector)
            (hsPkgs.vector-algorithms)
          ];
        };
        "accelerate-crystal" = {
          depends  = (((pkgs.lib.optional (flags.cuda) (hsPkgs.accelerate-cuda) ++ pkgs.lib.optional (flags.llvm-cpu) (hsPkgs.accelerate-llvm-native)) ++ pkgs.lib.optional (flags.llvm-gpu) (hsPkgs.accelerate-llvm-ptx)) ++ pkgs.lib.optional (flags.ekg) (hsPkgs.ekg)) ++ pkgs.lib.optionals (!(!flags.crystal)) [
            (hsPkgs.accelerate)
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.fclabels)
            (hsPkgs.gloss-raster-accelerate)
          ];
        };
        "accelerate-canny" = {
          depends  = (((pkgs.lib.optional (flags.cuda) (hsPkgs.accelerate-cuda) ++ pkgs.lib.optional (flags.llvm-cpu) (hsPkgs.accelerate-llvm-native)) ++ pkgs.lib.optional (flags.llvm-gpu) (hsPkgs.accelerate-llvm-ptx)) ++ pkgs.lib.optional (flags.ekg) (hsPkgs.ekg)) ++ pkgs.lib.optionals (!(!flags.canny)) [
            (hsPkgs.accelerate)
            (hsPkgs.accelerate-io)
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.fclabels)
            (hsPkgs.repa)
            (hsPkgs.repa-io)
            (hsPkgs.vector)
          ];
        };
        "accelerate-mandelbrot" = {
          depends  = ((((pkgs.lib.optional (flags.cuda) (hsPkgs.accelerate-cuda) ++ pkgs.lib.optionals (flags.llvm-cpu) [
            (hsPkgs.accelerate-llvm-native)
            (hsPkgs.accelerate-llvm)
          ]) ++ pkgs.lib.optional (flags.llvm-gpu) (hsPkgs.accelerate-llvm-ptx)) ++ pkgs.lib.optional (flags.llvm-cpu && flags.llvm-gpu && flags.llvm-multi) (hsPkgs.accelerate-llvm-multidev)) ++ pkgs.lib.optional (flags.ekg) (hsPkgs.ekg)) ++ pkgs.lib.optionals (!(!flags.mandelbrot)) [
            (hsPkgs.accelerate)
            (hsPkgs.accelerate-io)
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.fclabels)
            (hsPkgs.gloss)
            (hsPkgs.gloss-accelerate)
          ];
        };
        "accelerate-fluid" = {
          depends  = (((pkgs.lib.optional (flags.cuda) (hsPkgs.accelerate-cuda) ++ pkgs.lib.optional (flags.llvm-cpu) (hsPkgs.accelerate-llvm-native)) ++ pkgs.lib.optional (flags.llvm-gpu) (hsPkgs.accelerate-llvm-ptx)) ++ pkgs.lib.optional (flags.ekg) (hsPkgs.ekg)) ++ pkgs.lib.optionals (!(!flags.fluid)) [
            (hsPkgs.accelerate)
            (hsPkgs.accelerate-io)
            (hsPkgs.base)
            (hsPkgs.bmp)
            (hsPkgs.criterion)
            (hsPkgs.fclabels)
            (hsPkgs.gloss)
          ];
        };
        "accelerate-nbody" = {
          depends  = (((pkgs.lib.optional (flags.cuda) (hsPkgs.accelerate-cuda) ++ pkgs.lib.optional (flags.llvm-cpu) (hsPkgs.accelerate-llvm-native)) ++ pkgs.lib.optional (flags.llvm-gpu) (hsPkgs.accelerate-llvm-ptx)) ++ pkgs.lib.optional (flags.ekg) (hsPkgs.ekg)) ++ pkgs.lib.optionals (!(!flags.nbody)) [
            (hsPkgs.accelerate)
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.fclabels)
            (hsPkgs.gloss)
            (hsPkgs.mwc-random)
          ];
        };
        "accelerate-smoothlife" = {
          depends  = (((pkgs.lib.optional (flags.cuda) (hsPkgs.accelerate-cuda) ++ pkgs.lib.optional (flags.llvm-cpu) (hsPkgs.accelerate-llvm-native)) ++ pkgs.lib.optional (flags.llvm-gpu) (hsPkgs.accelerate-llvm-ptx)) ++ pkgs.lib.optional (flags.ekg) (hsPkgs.ekg)) ++ pkgs.lib.optionals (!(!flags.smoothlife)) [
            (hsPkgs.accelerate)
            (hsPkgs.accelerate-fft)
            (hsPkgs.accelerate-io)
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.fclabels)
            (hsPkgs.gloss)
            (hsPkgs.gloss-accelerate)
            (hsPkgs.mwc-random)
          ];
        };
        "accelerate-hashcat" = {
          depends  = (((pkgs.lib.optional (flags.cuda) (hsPkgs.accelerate-cuda) ++ pkgs.lib.optional (flags.llvm-cpu) (hsPkgs.accelerate-llvm-native)) ++ pkgs.lib.optional (flags.llvm-gpu) (hsPkgs.accelerate-llvm-ptx)) ++ pkgs.lib.optional (flags.ekg) (hsPkgs.ekg)) ++ pkgs.lib.optionals (!(!flags.hashcat)) [
            (hsPkgs.accelerate)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-lexing)
            (hsPkgs.cereal)
            (hsPkgs.criterion)
            (hsPkgs.fclabels)
            (hsPkgs.mwc-random)
          ];
        };
        "accelerate-fft" = {
          depends  = ((pkgs.lib.optional (flags.cuda) (hsPkgs.accelerate-cuda) ++ pkgs.lib.optional (flags.llvm-cpu) (hsPkgs.accelerate-llvm-native)) ++ pkgs.lib.optional (flags.llvm-gpu) (hsPkgs.accelerate-llvm-ptx)) ++ pkgs.lib.optionals (!(!flags.fft)) [
            (hsPkgs.accelerate)
            (hsPkgs.accelerate-io)
            (hsPkgs.accelerate-fft)
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.fclabels)
            (hsPkgs.filepath)
          ];
        };
        "accelerate-pagerank" = {
          depends  = ((pkgs.lib.optional (flags.cuda) (hsPkgs.accelerate-cuda) ++ pkgs.lib.optional (flags.llvm-cpu) (hsPkgs.accelerate-llvm-native)) ++ pkgs.lib.optional (flags.llvm-gpu) (hsPkgs.accelerate-llvm-ptx)) ++ pkgs.lib.optionals (!(!flags.pagerank)) [
            (hsPkgs.accelerate)
            (hsPkgs.accelerate-io)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.directory)
            (hsPkgs.fclabels)
            (hsPkgs.vector)
            (hsPkgs.vector-algorithms)
          ];
        };
        "accelerate-ray" = {
          depends  = ((((pkgs.lib.optionals (!(!flags.ray)) [
            (hsPkgs.accelerate)
            (hsPkgs.accelerate-io)
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.fclabels)
            (hsPkgs.gloss)
            (hsPkgs.gloss-accelerate)
            (hsPkgs.gloss-raster-accelerate)
          ] ++ pkgs.lib.optional (flags.cuda) (hsPkgs.accelerate-cuda)) ++ pkgs.lib.optional (flags.llvm-cpu) (hsPkgs.accelerate-llvm-native)) ++ pkgs.lib.optional (flags.llvm-gpu) (hsPkgs.accelerate-llvm-ptx)) ++ pkgs.lib.optional (flags.llvm-cpu && flags.llvm-gpu && flags.llvm-multi) (hsPkgs.accelerate-llvm-multidev)) ++ pkgs.lib.optional (flags.ekg) (hsPkgs.ekg);
        };
        "accelerate-kmeans" = {
          depends  = (((pkgs.lib.optionals (!(!flags.kmeans)) [
            (hsPkgs.accelerate)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.criterion)
            (hsPkgs.normaldistribution)
            (hsPkgs.random)
          ] ++ pkgs.lib.optional (flags.cuda) (hsPkgs.accelerate-cuda)) ++ pkgs.lib.optional (flags.llvm-cpu) (hsPkgs.accelerate-llvm-native)) ++ pkgs.lib.optional (flags.llvm-gpu) (hsPkgs.accelerate-llvm-ptx)) ++ pkgs.lib.optional (flags.ekg) (hsPkgs.ekg);
        };
      };
    };
  }