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
    flags = {
      gui = true;
      ekg = true;
      codespeed = false;
      cuda = false;
      llvm-cpu = false;
      llvm-ptx = false;
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
      identifier = { name = "accelerate-examples"; version = "1.0.0.0"; };
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
          (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
          (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
          (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
          ] ++ (pkgs.lib).optional (flags.cuda) (hsPkgs."accelerate-cuda" or (errorHandler.buildDepError "accelerate-cuda"))) ++ (pkgs.lib).optional (flags.llvm-cpu) (hsPkgs."accelerate-llvm-native" or (errorHandler.buildDepError "accelerate-llvm-native"))) ++ (pkgs.lib).optional (flags.llvm-ptx) (hsPkgs."accelerate-llvm-ptx" or (errorHandler.buildDepError "accelerate-llvm-ptx"))) ++ (pkgs.lib).optional (flags.cilk) (hsPkgs."accelerate-icc-opencl" or (errorHandler.buildDepError "accelerate-icc-opencl"))) ++ (pkgs.lib).optionals (flags.codespeed) [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      exes = {
        "accelerate-nofib" = {
          depends = (pkgs.lib).optional (flags.cuda) (hsPkgs."accelerate-cuda" or (errorHandler.buildDepError "accelerate-cuda")) ++ (pkgs.lib).optionals (!(!flags.nofib)) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."accelerate-examples" or (errorHandler.buildDepError "accelerate-examples"))
            (hsPkgs."accelerate-fft" or (errorHandler.buildDepError "accelerate-fft"))
            (hsPkgs."accelerate-io" or (errorHandler.buildDepError "accelerate-io"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          libs = [ (pkgs."stdc++" or (errorHandler.sysDepError "stdc++")) ];
          buildable = if !flags.nofib then false else true;
          };
        "accelerate-smvm" = {
          depends = (pkgs.lib).optionals (!(!flags.smvm)) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."accelerate-examples" or (errorHandler.buildDepError "accelerate-examples"))
            (hsPkgs."accelerate-io" or (errorHandler.buildDepError "accelerate-io"))
            (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
            (hsPkgs."matrix-market-attoparsec" or (errorHandler.buildDepError "matrix-market-attoparsec"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vector-algorithms" or (errorHandler.buildDepError "vector-algorithms"))
            ];
          buildable = if !flags.smvm then false else true;
          };
        "accelerate-crystal" = {
          depends = (pkgs.lib).optionals (!(!flags.crystal)) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."accelerate-examples" or (errorHandler.buildDepError "accelerate-examples"))
            (hsPkgs."colour-accelerate" or (errorHandler.buildDepError "colour-accelerate"))
            (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
            (hsPkgs."gloss-raster-accelerate" or (errorHandler.buildDepError "gloss-raster-accelerate"))
            ];
          buildable = if !flags.crystal then false else true;
          };
        "accelerate-tunnel" = {
          depends = (pkgs.lib).optionals (!(!flags.tunnel)) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."accelerate-examples" or (errorHandler.buildDepError "accelerate-examples"))
            (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
            (hsPkgs."gloss-raster-accelerate" or (errorHandler.buildDepError "gloss-raster-accelerate"))
            (hsPkgs."lens-accelerate" or (errorHandler.buildDepError "lens-accelerate"))
            (hsPkgs."linear-accelerate" or (errorHandler.buildDepError "linear-accelerate"))
            ];
          buildable = if !flags.tunnel then false else true;
          };
        "accelerate-canny" = {
          depends = (pkgs.lib).optionals (!(!flags.canny)) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."accelerate-examples" or (errorHandler.buildDepError "accelerate-examples"))
            (hsPkgs."accelerate-io" or (errorHandler.buildDepError "accelerate-io"))
            (hsPkgs."colour-accelerate" or (errorHandler.buildDepError "colour-accelerate"))
            (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
            (hsPkgs."repa" or (errorHandler.buildDepError "repa"))
            (hsPkgs."repa-io" or (errorHandler.buildDepError "repa-io"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = if !flags.canny then false else true;
          };
        "accelerate-mandelbrot" = {
          depends = (pkgs.lib).optionals (!(!flags.mandelbrot)) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."accelerate-examples" or (errorHandler.buildDepError "accelerate-examples"))
            (hsPkgs."accelerate-io" or (errorHandler.buildDepError "accelerate-io"))
            (hsPkgs."colour-accelerate" or (errorHandler.buildDepError "colour-accelerate"))
            (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
            (hsPkgs."gloss-accelerate" or (errorHandler.buildDepError "gloss-accelerate"))
            ];
          buildable = if !flags.mandelbrot then false else true;
          };
        "accelerate-fluid" = {
          depends = (pkgs.lib).optionals (!(!flags.fluid)) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."accelerate-examples" or (errorHandler.buildDepError "accelerate-examples"))
            (hsPkgs."accelerate-io" or (errorHandler.buildDepError "accelerate-io"))
            (hsPkgs."bmp" or (errorHandler.buildDepError "bmp"))
            (hsPkgs."colour-accelerate" or (errorHandler.buildDepError "colour-accelerate"))
            (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
            (hsPkgs."gloss-rendering" or (errorHandler.buildDepError "gloss-rendering"))
            ];
          buildable = if !flags.fluid then false else true;
          };
        "accelerate-nbody" = {
          depends = (pkgs.lib).optionals (!(!flags.nbody)) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."accelerate-examples" or (errorHandler.buildDepError "accelerate-examples"))
            (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
            (hsPkgs."lens-accelerate" or (errorHandler.buildDepError "lens-accelerate"))
            (hsPkgs."linear-accelerate" or (errorHandler.buildDepError "linear-accelerate"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            ];
          buildable = if !flags.nbody then false else true;
          };
        "accelerate-smoothlife" = {
          depends = (pkgs.lib).optional (flags.cuda) (hsPkgs."accelerate-cuda" or (errorHandler.buildDepError "accelerate-cuda")) ++ (pkgs.lib).optionals (!(!flags.smoothlife)) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."accelerate-examples" or (errorHandler.buildDepError "accelerate-examples"))
            (hsPkgs."accelerate-fft" or (errorHandler.buildDepError "accelerate-fft"))
            (hsPkgs."colour-accelerate" or (errorHandler.buildDepError "colour-accelerate"))
            (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
            (hsPkgs."gloss-accelerate" or (errorHandler.buildDepError "gloss-accelerate"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            ];
          buildable = if !flags.smoothlife then false else true;
          };
        "accelerate-hashcat" = {
          depends = (pkgs.lib).optionals (!(!flags.hashcat)) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."accelerate-examples" or (errorHandler.buildDepError "accelerate-examples"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."bytestring-lexing" or (errorHandler.buildDepError "bytestring-lexing"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            ];
          buildable = if !flags.hashcat then false else true;
          };
        "accelerate-fft" = {
          depends = (pkgs.lib).optionals (!(!flags.fft)) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."accelerate-examples" or (errorHandler.buildDepError "accelerate-examples"))
            (hsPkgs."accelerate-fft" or (errorHandler.buildDepError "accelerate-fft"))
            (hsPkgs."accelerate-io" or (errorHandler.buildDepError "accelerate-io"))
            (hsPkgs."colour-accelerate" or (errorHandler.buildDepError "colour-accelerate"))
            (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          buildable = if !flags.fft then false else true;
          };
        "accelerate-pagerank" = {
          depends = (pkgs.lib).optionals (!(!flags.pagerank)) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."accelerate-examples" or (errorHandler.buildDepError "accelerate-examples"))
            (hsPkgs."accelerate-io" or (errorHandler.buildDepError "accelerate-io"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vector-algorithms" or (errorHandler.buildDepError "vector-algorithms"))
            ];
          buildable = if !flags.pagerank then false else true;
          };
        "accelerate-ray" = {
          depends = (pkgs.lib).optionals (!(!flags.ray)) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."accelerate-examples" or (errorHandler.buildDepError "accelerate-examples"))
            (hsPkgs."colour-accelerate" or (errorHandler.buildDepError "colour-accelerate"))
            (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
            (hsPkgs."gloss-accelerate" or (errorHandler.buildDepError "gloss-accelerate"))
            (hsPkgs."gloss-raster-accelerate" or (errorHandler.buildDepError "gloss-raster-accelerate"))
            (hsPkgs."lens-accelerate" or (errorHandler.buildDepError "lens-accelerate"))
            (hsPkgs."linear-accelerate" or (errorHandler.buildDepError "linear-accelerate"))
            ];
          buildable = if !flags.ray then false else true;
          };
        "accelerate-kmeans" = {
          depends = (pkgs.lib).optionals (!(!flags.kmeans)) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."accelerate-examples" or (errorHandler.buildDepError "accelerate-examples"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
            (hsPkgs."normaldistribution" or (errorHandler.buildDepError "normaldistribution"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ];
          buildable = if !flags.kmeans then false else true;
          };
        };
      };
    }