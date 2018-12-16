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
      codespeed = false;
      cuda = false;
      llvm-cpu = true;
      llvm-ptx = true;
      cilk = false;
      nofib = true;
      smvm = true;
      crystal = true;
      tunnel = true;
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
      specVersion = "1.8";
      identifier = {
        name = "accelerate-examples";
        version = "1.0.0.0";
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
      "library" = {
        depends = (((([
          (hsPkgs.base)
          (hsPkgs.accelerate)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.containers)
          (hsPkgs.criterion)
          (hsPkgs.directory)
          (hsPkgs.fclabels)
          (hsPkgs.HUnit)
          (hsPkgs.linear)
          (hsPkgs.mwc-random)
          (hsPkgs.QuickCheck)
          (hsPkgs.test-framework)
          (hsPkgs.test-framework-hunit)
          (hsPkgs.test-framework-quickcheck2)
        ] ++ pkgs.lib.optional (flags.cuda) (hsPkgs.accelerate-cuda)) ++ pkgs.lib.optional (flags.llvm-cpu) (hsPkgs.accelerate-llvm-native)) ++ pkgs.lib.optional (flags.llvm-ptx) (hsPkgs.accelerate-llvm-ptx)) ++ pkgs.lib.optional (flags.cilk) (hsPkgs.accelerate-icc-opencl)) ++ pkgs.lib.optionals (flags.codespeed) [
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.HTTP)
          (hsPkgs.http-types)
          (hsPkgs.network)
          (hsPkgs.process)
          (hsPkgs.statistics)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.time)
        ];
      };
      exes = {
        "accelerate-nofib" = {
          depends = pkgs.lib.optional (flags.cuda) (hsPkgs.accelerate-cuda) ++ pkgs.lib.optionals (!(!flags.nofib)) [
            (hsPkgs.base)
            (hsPkgs.accelerate)
            (hsPkgs.accelerate-examples)
            (hsPkgs.accelerate-fft)
            (hsPkgs.accelerate-io)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.fclabels)
            (hsPkgs.HUnit)
            (hsPkgs.pipes)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.vector)
          ];
          libs = [ (pkgs."stdc++") ];
        };
        "accelerate-smvm" = {
          depends = pkgs.lib.optionals (!(!flags.smvm)) [
            (hsPkgs.base)
            (hsPkgs.accelerate)
            (hsPkgs.accelerate-examples)
            (hsPkgs.accelerate-io)
            (hsPkgs.fclabels)
            (hsPkgs.matrix-market-attoparsec)
            (hsPkgs.mwc-random)
            (hsPkgs.scientific)
            (hsPkgs.vector)
            (hsPkgs.vector-algorithms)
          ];
        };
        "accelerate-crystal" = {
          depends = pkgs.lib.optionals (!(!flags.crystal)) [
            (hsPkgs.base)
            (hsPkgs.accelerate)
            (hsPkgs.accelerate-examples)
            (hsPkgs.colour-accelerate)
            (hsPkgs.fclabels)
            (hsPkgs.gloss-raster-accelerate)
          ];
        };
        "accelerate-tunnel" = {
          depends = pkgs.lib.optionals (!(!flags.tunnel)) [
            (hsPkgs.base)
            (hsPkgs.accelerate)
            (hsPkgs.accelerate-examples)
            (hsPkgs.fclabels)
            (hsPkgs.gloss-raster-accelerate)
            (hsPkgs.lens-accelerate)
            (hsPkgs.linear-accelerate)
          ];
        };
        "accelerate-canny" = {
          depends = pkgs.lib.optionals (!(!flags.canny)) [
            (hsPkgs.base)
            (hsPkgs.accelerate)
            (hsPkgs.accelerate-examples)
            (hsPkgs.accelerate-io)
            (hsPkgs.colour-accelerate)
            (hsPkgs.fclabels)
            (hsPkgs.repa)
            (hsPkgs.repa-io)
            (hsPkgs.vector)
          ];
        };
        "accelerate-mandelbrot" = {
          depends = pkgs.lib.optionals (!(!flags.mandelbrot)) [
            (hsPkgs.base)
            (hsPkgs.accelerate)
            (hsPkgs.accelerate-examples)
            (hsPkgs.accelerate-io)
            (hsPkgs.colour-accelerate)
            (hsPkgs.fclabels)
            (hsPkgs.gloss)
            (hsPkgs.gloss-accelerate)
          ];
        };
        "accelerate-fluid" = {
          depends = pkgs.lib.optionals (!(!flags.fluid)) [
            (hsPkgs.base)
            (hsPkgs.accelerate)
            (hsPkgs.accelerate-examples)
            (hsPkgs.accelerate-io)
            (hsPkgs.bmp)
            (hsPkgs.colour-accelerate)
            (hsPkgs.fclabels)
            (hsPkgs.gloss)
            (hsPkgs.gloss-rendering)
          ];
        };
        "accelerate-nbody" = {
          depends = pkgs.lib.optionals (!(!flags.nbody)) [
            (hsPkgs.base)
            (hsPkgs.accelerate)
            (hsPkgs.accelerate-examples)
            (hsPkgs.fclabels)
            (hsPkgs.gloss)
            (hsPkgs.lens-accelerate)
            (hsPkgs.linear-accelerate)
            (hsPkgs.mwc-random)
          ];
        };
        "accelerate-smoothlife" = {
          depends = pkgs.lib.optional (flags.cuda) (hsPkgs.accelerate-cuda) ++ pkgs.lib.optionals (!(!flags.smoothlife)) [
            (hsPkgs.base)
            (hsPkgs.accelerate)
            (hsPkgs.accelerate-examples)
            (hsPkgs.accelerate-fft)
            (hsPkgs.colour-accelerate)
            (hsPkgs.fclabels)
            (hsPkgs.gloss)
            (hsPkgs.gloss-accelerate)
            (hsPkgs.mwc-random)
          ];
        };
        "accelerate-hashcat" = {
          depends = pkgs.lib.optionals (!(!flags.hashcat)) [
            (hsPkgs.base)
            (hsPkgs.accelerate)
            (hsPkgs.accelerate-examples)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-lexing)
            (hsPkgs.cereal)
            (hsPkgs.criterion)
            (hsPkgs.fclabels)
            (hsPkgs.mwc-random)
          ];
        };
        "accelerate-fft" = {
          depends = pkgs.lib.optionals (!(!flags.fft)) [
            (hsPkgs.base)
            (hsPkgs.accelerate)
            (hsPkgs.accelerate-examples)
            (hsPkgs.accelerate-fft)
            (hsPkgs.accelerate-io)
            (hsPkgs.colour-accelerate)
            (hsPkgs.fclabels)
            (hsPkgs.filepath)
          ];
        };
        "accelerate-pagerank" = {
          depends = pkgs.lib.optionals (!(!flags.pagerank)) [
            (hsPkgs.base)
            (hsPkgs.accelerate)
            (hsPkgs.accelerate-examples)
            (hsPkgs.accelerate-io)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.fclabels)
            (hsPkgs.vector)
            (hsPkgs.vector-algorithms)
          ];
        };
        "accelerate-ray" = {
          depends = pkgs.lib.optionals (!(!flags.ray)) [
            (hsPkgs.base)
            (hsPkgs.accelerate)
            (hsPkgs.accelerate-examples)
            (hsPkgs.colour-accelerate)
            (hsPkgs.fclabels)
            (hsPkgs.gloss)
            (hsPkgs.gloss-accelerate)
            (hsPkgs.gloss-raster-accelerate)
            (hsPkgs.lens-accelerate)
            (hsPkgs.linear-accelerate)
          ];
        };
        "accelerate-kmeans" = {
          depends = pkgs.lib.optionals (!(!flags.kmeans)) [
            (hsPkgs.base)
            (hsPkgs.accelerate)
            (hsPkgs.accelerate-examples)
            (hsPkgs.binary)
            (hsPkgs.directory)
            (hsPkgs.fclabels)
            (hsPkgs.normaldistribution)
            (hsPkgs.random)
          ];
        };
      };
    };
  }