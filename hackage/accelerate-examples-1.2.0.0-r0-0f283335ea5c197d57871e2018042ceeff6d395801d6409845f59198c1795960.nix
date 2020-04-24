{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      gui = true;
      ekg = true;
      codespeed = false;
      llvm-cpu = true;
      llvm-ptx = true;
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
      identifier = { name = "accelerate-examples"; version = "1.2.0.0"; };
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
        depends = (([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
          (hsPkgs."ansi-wl-pprint" or ((hsPkgs.pkgs-errors).buildDepError "ansi-wl-pprint"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."fclabels" or ((hsPkgs.pkgs-errors).buildDepError "fclabels"))
          (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
          (hsPkgs."linear" or ((hsPkgs.pkgs-errors).buildDepError "linear"))
          (hsPkgs."mwc-random" or ((hsPkgs.pkgs-errors).buildDepError "mwc-random"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
          (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
          (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
          ] ++ (pkgs.lib).optional (flags.llvm-cpu) (hsPkgs."accelerate-llvm-native" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-llvm-native"))) ++ (pkgs.lib).optional (flags.llvm-ptx) (hsPkgs."accelerate-llvm-ptx" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-llvm-ptx"))) ++ (pkgs.lib).optionals (flags.codespeed) [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."statistics" or ((hsPkgs.pkgs-errors).buildDepError "statistics"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ];
        buildable = true;
        };
      exes = {
        "accelerate-smvm" = {
          depends = (pkgs.lib).optionals (!(!flags.smvm)) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
            (hsPkgs."accelerate-examples" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-examples"))
            (hsPkgs."accelerate-io" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-io"))
            (hsPkgs."fclabels" or ((hsPkgs.pkgs-errors).buildDepError "fclabels"))
            (hsPkgs."matrix-market-attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "matrix-market-attoparsec"))
            (hsPkgs."mwc-random" or ((hsPkgs.pkgs-errors).buildDepError "mwc-random"))
            (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."vector-algorithms" or ((hsPkgs.pkgs-errors).buildDepError "vector-algorithms"))
            ];
          buildable = if !flags.smvm then false else true;
          };
        "accelerate-crystal" = {
          depends = (pkgs.lib).optionals (!(!flags.crystal)) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
            (hsPkgs."accelerate-examples" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-examples"))
            (hsPkgs."colour-accelerate" or ((hsPkgs.pkgs-errors).buildDepError "colour-accelerate"))
            (hsPkgs."fclabels" or ((hsPkgs.pkgs-errors).buildDepError "fclabels"))
            (hsPkgs."gloss-raster-accelerate" or ((hsPkgs.pkgs-errors).buildDepError "gloss-raster-accelerate"))
            ];
          buildable = if !flags.crystal then false else true;
          };
        "accelerate-tunnel" = {
          depends = (pkgs.lib).optionals (!(!flags.tunnel)) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
            (hsPkgs."accelerate-examples" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-examples"))
            (hsPkgs."fclabels" or ((hsPkgs.pkgs-errors).buildDepError "fclabels"))
            (hsPkgs."gloss-raster-accelerate" or ((hsPkgs.pkgs-errors).buildDepError "gloss-raster-accelerate"))
            (hsPkgs."lens-accelerate" or ((hsPkgs.pkgs-errors).buildDepError "lens-accelerate"))
            (hsPkgs."linear-accelerate" or ((hsPkgs.pkgs-errors).buildDepError "linear-accelerate"))
            ];
          buildable = if !flags.tunnel then false else true;
          };
        "accelerate-canny" = {
          depends = (pkgs.lib).optionals (!(!flags.canny)) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
            (hsPkgs."accelerate-examples" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-examples"))
            (hsPkgs."accelerate-io" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-io"))
            (hsPkgs."colour-accelerate" or ((hsPkgs.pkgs-errors).buildDepError "colour-accelerate"))
            (hsPkgs."fclabels" or ((hsPkgs.pkgs-errors).buildDepError "fclabels"))
            (hsPkgs."repa" or ((hsPkgs.pkgs-errors).buildDepError "repa"))
            (hsPkgs."repa-io" or ((hsPkgs.pkgs-errors).buildDepError "repa-io"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = if !flags.canny then false else true;
          };
        "accelerate-mandelbrot" = {
          depends = (pkgs.lib).optionals (!(!flags.mandelbrot)) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
            (hsPkgs."accelerate-examples" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-examples"))
            (hsPkgs."accelerate-io" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-io"))
            (hsPkgs."colour-accelerate" or ((hsPkgs.pkgs-errors).buildDepError "colour-accelerate"))
            (hsPkgs."fclabels" or ((hsPkgs.pkgs-errors).buildDepError "fclabels"))
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            (hsPkgs."gloss-accelerate" or ((hsPkgs.pkgs-errors).buildDepError "gloss-accelerate"))
            ];
          buildable = if !flags.mandelbrot then false else true;
          };
        "accelerate-fluid" = {
          depends = (pkgs.lib).optionals (!(!flags.fluid)) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
            (hsPkgs."accelerate-examples" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-examples"))
            (hsPkgs."accelerate-io" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-io"))
            (hsPkgs."bmp" or ((hsPkgs.pkgs-errors).buildDepError "bmp"))
            (hsPkgs."colour-accelerate" or ((hsPkgs.pkgs-errors).buildDepError "colour-accelerate"))
            (hsPkgs."fclabels" or ((hsPkgs.pkgs-errors).buildDepError "fclabels"))
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            (hsPkgs."gloss-rendering" or ((hsPkgs.pkgs-errors).buildDepError "gloss-rendering"))
            ];
          buildable = if !flags.fluid then false else true;
          };
        "accelerate-nbody" = {
          depends = (pkgs.lib).optionals (!(!flags.nbody)) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
            (hsPkgs."accelerate-examples" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-examples"))
            (hsPkgs."fclabels" or ((hsPkgs.pkgs-errors).buildDepError "fclabels"))
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            (hsPkgs."lens-accelerate" or ((hsPkgs.pkgs-errors).buildDepError "lens-accelerate"))
            (hsPkgs."linear-accelerate" or ((hsPkgs.pkgs-errors).buildDepError "linear-accelerate"))
            (hsPkgs."mwc-random" or ((hsPkgs.pkgs-errors).buildDepError "mwc-random"))
            ];
          buildable = if !flags.nbody then false else true;
          };
        "accelerate-smoothlife" = {
          depends = (pkgs.lib).optionals (!(!flags.smoothlife)) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
            (hsPkgs."accelerate-examples" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-examples"))
            (hsPkgs."accelerate-fft" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-fft"))
            (hsPkgs."colour-accelerate" or ((hsPkgs.pkgs-errors).buildDepError "colour-accelerate"))
            (hsPkgs."fclabels" or ((hsPkgs.pkgs-errors).buildDepError "fclabels"))
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            (hsPkgs."gloss-accelerate" or ((hsPkgs.pkgs-errors).buildDepError "gloss-accelerate"))
            (hsPkgs."mwc-random" or ((hsPkgs.pkgs-errors).buildDepError "mwc-random"))
            ];
          buildable = if !flags.smoothlife then false else true;
          };
        "accelerate-hashcat" = {
          depends = (pkgs.lib).optionals (!(!flags.hashcat)) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
            (hsPkgs."accelerate-examples" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-examples"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."bytestring-lexing" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-lexing"))
            (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."fclabels" or ((hsPkgs.pkgs-errors).buildDepError "fclabels"))
            (hsPkgs."mwc-random" or ((hsPkgs.pkgs-errors).buildDepError "mwc-random"))
            ];
          buildable = if !flags.hashcat then false else true;
          };
        "accelerate-fft" = {
          depends = (pkgs.lib).optionals (!(!flags.fft)) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
            (hsPkgs."accelerate-examples" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-examples"))
            (hsPkgs."accelerate-fft" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-fft"))
            (hsPkgs."accelerate-io" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-io"))
            (hsPkgs."colour-accelerate" or ((hsPkgs.pkgs-errors).buildDepError "colour-accelerate"))
            (hsPkgs."fclabels" or ((hsPkgs.pkgs-errors).buildDepError "fclabels"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            ];
          buildable = if !flags.fft then false else true;
          };
        "accelerate-pagerank" = {
          depends = (pkgs.lib).optionals (!(!flags.pagerank)) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
            (hsPkgs."accelerate-examples" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-examples"))
            (hsPkgs."accelerate-io" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-io"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."fclabels" or ((hsPkgs.pkgs-errors).buildDepError "fclabels"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."vector-algorithms" or ((hsPkgs.pkgs-errors).buildDepError "vector-algorithms"))
            ];
          buildable = if !flags.pagerank then false else true;
          };
        "accelerate-ray" = {
          depends = (pkgs.lib).optionals (!(!flags.ray)) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
            (hsPkgs."accelerate-examples" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-examples"))
            (hsPkgs."colour-accelerate" or ((hsPkgs.pkgs-errors).buildDepError "colour-accelerate"))
            (hsPkgs."fclabels" or ((hsPkgs.pkgs-errors).buildDepError "fclabels"))
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            (hsPkgs."gloss-accelerate" or ((hsPkgs.pkgs-errors).buildDepError "gloss-accelerate"))
            (hsPkgs."gloss-raster-accelerate" or ((hsPkgs.pkgs-errors).buildDepError "gloss-raster-accelerate"))
            (hsPkgs."lens-accelerate" or ((hsPkgs.pkgs-errors).buildDepError "lens-accelerate"))
            (hsPkgs."linear-accelerate" or ((hsPkgs.pkgs-errors).buildDepError "linear-accelerate"))
            ];
          buildable = if !flags.ray then false else true;
          };
        "accelerate-kmeans" = {
          depends = (pkgs.lib).optionals (!(!flags.kmeans)) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
            (hsPkgs."accelerate-examples" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-examples"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."fclabels" or ((hsPkgs.pkgs-errors).buildDepError "fclabels"))
            (hsPkgs."normaldistribution" or ((hsPkgs.pkgs-errors).buildDepError "normaldistribution"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            ];
          buildable = if !flags.kmeans then false else true;
          };
        };
      };
    }