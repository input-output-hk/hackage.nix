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
      identifier = { name = "accelerate-examples"; version = "0.15.0.0"; };
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
          depends = (((pkgs.lib.optional (flags.cuda) (hsPkgs."accelerate-cuda" or (errorHandler.buildDepError "accelerate-cuda")) ++ pkgs.lib.optional (flags.llvm-cpu) (hsPkgs."accelerate-llvm-native" or (errorHandler.buildDepError "accelerate-llvm-native"))) ++ pkgs.lib.optional (flags.llvm-gpu) (hsPkgs."accelerate-llvm-ptx" or (errorHandler.buildDepError "accelerate-llvm-ptx"))) ++ pkgs.lib.optional (flags.ekg) (hsPkgs."ekg" or (errorHandler.buildDepError "ekg"))) ++ pkgs.lib.optionals (!!flags.nofib) [
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."accelerate-fft" or (errorHandler.buildDepError "accelerate-fft"))
            (hsPkgs."accelerate-io" or (errorHandler.buildDepError "accelerate-io"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          libs = [ (pkgs."stdc++" or (errorHandler.sysDepError "stdc++")) ];
          buildable = if !flags.nofib then false else true;
        };
        "accelerate-smvm" = {
          depends = (((pkgs.lib.optional (flags.cuda) (hsPkgs."accelerate-cuda" or (errorHandler.buildDepError "accelerate-cuda")) ++ pkgs.lib.optional (flags.llvm-cpu) (hsPkgs."accelerate-llvm-native" or (errorHandler.buildDepError "accelerate-llvm-native"))) ++ pkgs.lib.optional (flags.llvm-gpu) (hsPkgs."accelerate-llvm-ptx" or (errorHandler.buildDepError "accelerate-llvm-ptx"))) ++ pkgs.lib.optional (flags.ekg) (hsPkgs."ekg" or (errorHandler.buildDepError "ekg"))) ++ pkgs.lib.optionals (!!flags.smvm) [
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."bytestring-lexing" or (errorHandler.buildDepError "bytestring-lexing"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vector-algorithms" or (errorHandler.buildDepError "vector-algorithms"))
          ];
          buildable = if !flags.smvm then false else true;
        };
        "accelerate-crystal" = {
          depends = (((pkgs.lib.optional (flags.cuda) (hsPkgs."accelerate-cuda" or (errorHandler.buildDepError "accelerate-cuda")) ++ pkgs.lib.optional (flags.llvm-cpu) (hsPkgs."accelerate-llvm-native" or (errorHandler.buildDepError "accelerate-llvm-native"))) ++ pkgs.lib.optional (flags.llvm-gpu) (hsPkgs."accelerate-llvm-ptx" or (errorHandler.buildDepError "accelerate-llvm-ptx"))) ++ pkgs.lib.optional (flags.ekg) (hsPkgs."ekg" or (errorHandler.buildDepError "ekg"))) ++ pkgs.lib.optionals (!!flags.crystal) [
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
            (hsPkgs."gloss-raster-accelerate" or (errorHandler.buildDepError "gloss-raster-accelerate"))
          ];
          buildable = if !flags.crystal then false else true;
        };
        "accelerate-canny" = {
          depends = (((pkgs.lib.optional (flags.cuda) (hsPkgs."accelerate-cuda" or (errorHandler.buildDepError "accelerate-cuda")) ++ pkgs.lib.optional (flags.llvm-cpu) (hsPkgs."accelerate-llvm-native" or (errorHandler.buildDepError "accelerate-llvm-native"))) ++ pkgs.lib.optional (flags.llvm-gpu) (hsPkgs."accelerate-llvm-ptx" or (errorHandler.buildDepError "accelerate-llvm-ptx"))) ++ pkgs.lib.optional (flags.ekg) (hsPkgs."ekg" or (errorHandler.buildDepError "ekg"))) ++ pkgs.lib.optionals (!!flags.canny) [
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."accelerate-io" or (errorHandler.buildDepError "accelerate-io"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
            (hsPkgs."repa" or (errorHandler.buildDepError "repa"))
            (hsPkgs."repa-io" or (errorHandler.buildDepError "repa-io"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = if !flags.canny then false else true;
        };
        "accelerate-mandelbrot" = {
          depends = ((((pkgs.lib.optional (flags.cuda) (hsPkgs."accelerate-cuda" or (errorHandler.buildDepError "accelerate-cuda")) ++ pkgs.lib.optionals (flags.llvm-cpu) [
            (hsPkgs."accelerate-llvm-native" or (errorHandler.buildDepError "accelerate-llvm-native"))
            (hsPkgs."accelerate-llvm" or (errorHandler.buildDepError "accelerate-llvm"))
          ]) ++ pkgs.lib.optional (flags.llvm-gpu) (hsPkgs."accelerate-llvm-ptx" or (errorHandler.buildDepError "accelerate-llvm-ptx"))) ++ pkgs.lib.optional (flags.llvm-cpu && flags.llvm-gpu && flags.llvm-multi) (hsPkgs."accelerate-llvm-multidev" or (errorHandler.buildDepError "accelerate-llvm-multidev"))) ++ pkgs.lib.optional (flags.ekg) (hsPkgs."ekg" or (errorHandler.buildDepError "ekg"))) ++ pkgs.lib.optionals (!!flags.mandelbrot) [
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."accelerate-io" or (errorHandler.buildDepError "accelerate-io"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
            (hsPkgs."gloss-accelerate" or (errorHandler.buildDepError "gloss-accelerate"))
          ];
          buildable = if !flags.mandelbrot then false else true;
        };
        "accelerate-fluid" = {
          depends = (((pkgs.lib.optional (flags.cuda) (hsPkgs."accelerate-cuda" or (errorHandler.buildDepError "accelerate-cuda")) ++ pkgs.lib.optional (flags.llvm-cpu) (hsPkgs."accelerate-llvm-native" or (errorHandler.buildDepError "accelerate-llvm-native"))) ++ pkgs.lib.optional (flags.llvm-gpu) (hsPkgs."accelerate-llvm-ptx" or (errorHandler.buildDepError "accelerate-llvm-ptx"))) ++ pkgs.lib.optional (flags.ekg) (hsPkgs."ekg" or (errorHandler.buildDepError "ekg"))) ++ pkgs.lib.optionals (!!flags.fluid) [
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."accelerate-io" or (errorHandler.buildDepError "accelerate-io"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bmp" or (errorHandler.buildDepError "bmp"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
          ];
          buildable = if !flags.fluid then false else true;
        };
        "accelerate-nbody" = {
          depends = (((pkgs.lib.optional (flags.cuda) (hsPkgs."accelerate-cuda" or (errorHandler.buildDepError "accelerate-cuda")) ++ pkgs.lib.optional (flags.llvm-cpu) (hsPkgs."accelerate-llvm-native" or (errorHandler.buildDepError "accelerate-llvm-native"))) ++ pkgs.lib.optional (flags.llvm-gpu) (hsPkgs."accelerate-llvm-ptx" or (errorHandler.buildDepError "accelerate-llvm-ptx"))) ++ pkgs.lib.optional (flags.ekg) (hsPkgs."ekg" or (errorHandler.buildDepError "ekg"))) ++ pkgs.lib.optionals (!!flags.nbody) [
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          ];
          buildable = if !flags.nbody then false else true;
        };
        "accelerate-smoothlife" = {
          depends = (((pkgs.lib.optional (flags.cuda) (hsPkgs."accelerate-cuda" or (errorHandler.buildDepError "accelerate-cuda")) ++ pkgs.lib.optional (flags.llvm-cpu) (hsPkgs."accelerate-llvm-native" or (errorHandler.buildDepError "accelerate-llvm-native"))) ++ pkgs.lib.optional (flags.llvm-gpu) (hsPkgs."accelerate-llvm-ptx" or (errorHandler.buildDepError "accelerate-llvm-ptx"))) ++ pkgs.lib.optional (flags.ekg) (hsPkgs."ekg" or (errorHandler.buildDepError "ekg"))) ++ pkgs.lib.optionals (!!flags.smoothlife) [
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."accelerate-fft" or (errorHandler.buildDepError "accelerate-fft"))
            (hsPkgs."accelerate-io" or (errorHandler.buildDepError "accelerate-io"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
            (hsPkgs."gloss-accelerate" or (errorHandler.buildDepError "gloss-accelerate"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          ];
          buildable = if !flags.smoothlife then false else true;
        };
        "accelerate-hashcat" = {
          depends = (((pkgs.lib.optional (flags.cuda) (hsPkgs."accelerate-cuda" or (errorHandler.buildDepError "accelerate-cuda")) ++ pkgs.lib.optional (flags.llvm-cpu) (hsPkgs."accelerate-llvm-native" or (errorHandler.buildDepError "accelerate-llvm-native"))) ++ pkgs.lib.optional (flags.llvm-gpu) (hsPkgs."accelerate-llvm-ptx" or (errorHandler.buildDepError "accelerate-llvm-ptx"))) ++ pkgs.lib.optional (flags.ekg) (hsPkgs."ekg" or (errorHandler.buildDepError "ekg"))) ++ pkgs.lib.optionals (!!flags.hashcat) [
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
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
          depends = ((pkgs.lib.optional (flags.cuda) (hsPkgs."accelerate-cuda" or (errorHandler.buildDepError "accelerate-cuda")) ++ pkgs.lib.optional (flags.llvm-cpu) (hsPkgs."accelerate-llvm-native" or (errorHandler.buildDepError "accelerate-llvm-native"))) ++ pkgs.lib.optional (flags.llvm-gpu) (hsPkgs."accelerate-llvm-ptx" or (errorHandler.buildDepError "accelerate-llvm-ptx"))) ++ pkgs.lib.optionals (!!flags.fft) [
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."accelerate-io" or (errorHandler.buildDepError "accelerate-io"))
            (hsPkgs."accelerate-fft" or (errorHandler.buildDepError "accelerate-fft"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = if !flags.fft then false else true;
        };
        "accelerate-pagerank" = {
          depends = ((pkgs.lib.optional (flags.cuda) (hsPkgs."accelerate-cuda" or (errorHandler.buildDepError "accelerate-cuda")) ++ pkgs.lib.optional (flags.llvm-cpu) (hsPkgs."accelerate-llvm-native" or (errorHandler.buildDepError "accelerate-llvm-native"))) ++ pkgs.lib.optional (flags.llvm-gpu) (hsPkgs."accelerate-llvm-ptx" or (errorHandler.buildDepError "accelerate-llvm-ptx"))) ++ pkgs.lib.optionals (!!flags.pagerank) [
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."accelerate-io" or (errorHandler.buildDepError "accelerate-io"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vector-algorithms" or (errorHandler.buildDepError "vector-algorithms"))
          ];
          buildable = if !flags.pagerank then false else true;
        };
        "accelerate-ray" = {
          depends = ((((pkgs.lib.optionals (!!flags.ray) [
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."accelerate-io" or (errorHandler.buildDepError "accelerate-io"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
            (hsPkgs."gloss-accelerate" or (errorHandler.buildDepError "gloss-accelerate"))
            (hsPkgs."gloss-raster-accelerate" or (errorHandler.buildDepError "gloss-raster-accelerate"))
          ] ++ pkgs.lib.optional (flags.cuda) (hsPkgs."accelerate-cuda" or (errorHandler.buildDepError "accelerate-cuda"))) ++ pkgs.lib.optional (flags.llvm-cpu) (hsPkgs."accelerate-llvm-native" or (errorHandler.buildDepError "accelerate-llvm-native"))) ++ pkgs.lib.optional (flags.llvm-gpu) (hsPkgs."accelerate-llvm-ptx" or (errorHandler.buildDepError "accelerate-llvm-ptx"))) ++ pkgs.lib.optional (flags.llvm-cpu && flags.llvm-gpu && flags.llvm-multi) (hsPkgs."accelerate-llvm-multidev" or (errorHandler.buildDepError "accelerate-llvm-multidev"))) ++ pkgs.lib.optional (flags.ekg) (hsPkgs."ekg" or (errorHandler.buildDepError "ekg"));
          buildable = if !flags.ray then false else true;
        };
        "accelerate-kmeans" = {
          depends = (((pkgs.lib.optionals (!!flags.kmeans) [
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."normaldistribution" or (errorHandler.buildDepError "normaldistribution"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ] ++ pkgs.lib.optional (flags.cuda) (hsPkgs."accelerate-cuda" or (errorHandler.buildDepError "accelerate-cuda"))) ++ pkgs.lib.optional (flags.llvm-cpu) (hsPkgs."accelerate-llvm-native" or (errorHandler.buildDepError "accelerate-llvm-native"))) ++ pkgs.lib.optional (flags.llvm-gpu) (hsPkgs."accelerate-llvm-ptx" or (errorHandler.buildDepError "accelerate-llvm-ptx"))) ++ pkgs.lib.optional (flags.ekg) (hsPkgs."ekg" or (errorHandler.buildDepError "ekg"));
          buildable = if !flags.kmeans then false else true;
        };
      };
    };
  }