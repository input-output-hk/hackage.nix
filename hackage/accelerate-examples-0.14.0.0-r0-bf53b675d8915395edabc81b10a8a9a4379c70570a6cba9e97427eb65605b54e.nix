{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      gui = true;
      ekg = true;
      cuda = true;
      opencl = false;
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
      };
    package = {
      specVersion = "1.6";
      identifier = { name = "accelerate-examples"; version = "0.14.0.0"; };
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
          depends = (((pkgs.lib).optional (flags.cuda) (hsPkgs."accelerate-cuda" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-cuda")) ++ (pkgs.lib).optional (flags.opencl) (hsPkgs."accelerate-opencl" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-opencl"))) ++ (pkgs.lib).optional (flags.ekg) (hsPkgs."ekg" or ((hsPkgs.pkgs-errors).buildDepError "ekg"))) ++ (pkgs.lib).optionals (!(!flags.nofib)) [
            (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
            (hsPkgs."accelerate-io" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-io"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."fclabels" or ((hsPkgs.pkgs-errors).buildDepError "fclabels"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            ];
          libs = [
            (pkgs."stdc++" or ((hsPkgs.pkgs-errors).sysDepError "stdc++"))
            ];
          buildable = if !flags.nofib then false else true;
          };
        "accelerate-smvm" = {
          depends = (((pkgs.lib).optional (flags.cuda) (hsPkgs."accelerate-cuda" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-cuda")) ++ (pkgs.lib).optional (flags.opencl) (hsPkgs."accelerate-opencl" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-opencl"))) ++ (pkgs.lib).optional (flags.ekg) (hsPkgs."ekg" or ((hsPkgs.pkgs-errors).buildDepError "ekg"))) ++ (pkgs.lib).optionals (!(!flags.smvm)) [
            (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."bytestring-lexing" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-lexing"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."fclabels" or ((hsPkgs.pkgs-errors).buildDepError "fclabels"))
            (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
            (hsPkgs."mwc-random" or ((hsPkgs.pkgs-errors).buildDepError "mwc-random"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."vector-algorithms" or ((hsPkgs.pkgs-errors).buildDepError "vector-algorithms"))
            ];
          buildable = if !flags.smvm then false else true;
          };
        "accelerate-crystal" = {
          depends = (((pkgs.lib).optional (flags.cuda) (hsPkgs."accelerate-cuda" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-cuda")) ++ (pkgs.lib).optional (flags.opencl) (hsPkgs."accelerate-opencl" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-opencl"))) ++ (pkgs.lib).optional (flags.ekg) (hsPkgs."ekg" or ((hsPkgs.pkgs-errors).buildDepError "ekg"))) ++ (pkgs.lib).optionals (!(!flags.crystal)) [
            (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."fclabels" or ((hsPkgs.pkgs-errors).buildDepError "fclabels"))
            (hsPkgs."gloss-raster-accelerate" or ((hsPkgs.pkgs-errors).buildDepError "gloss-raster-accelerate"))
            ];
          buildable = if !flags.crystal then false else true;
          };
        "accelerate-canny" = {
          depends = (((pkgs.lib).optional (flags.cuda) (hsPkgs."accelerate-cuda" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-cuda")) ++ (pkgs.lib).optional (flags.opencl) (hsPkgs."accelerate-opencl" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-opencl"))) ++ (pkgs.lib).optional (flags.ekg) (hsPkgs."ekg" or ((hsPkgs.pkgs-errors).buildDepError "ekg"))) ++ (pkgs.lib).optionals (!(!flags.canny)) [
            (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
            (hsPkgs."accelerate-io" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-io"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."fclabels" or ((hsPkgs.pkgs-errors).buildDepError "fclabels"))
            (hsPkgs."repa" or ((hsPkgs.pkgs-errors).buildDepError "repa"))
            (hsPkgs."repa-io" or ((hsPkgs.pkgs-errors).buildDepError "repa-io"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = if !flags.canny then false else true;
          };
        "accelerate-mandelbrot" = {
          depends = (((pkgs.lib).optional (flags.cuda) (hsPkgs."accelerate-cuda" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-cuda")) ++ (pkgs.lib).optional (flags.opencl) (hsPkgs."accelerate-opencl" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-opencl"))) ++ (pkgs.lib).optional (flags.ekg) (hsPkgs."ekg" or ((hsPkgs.pkgs-errors).buildDepError "ekg"))) ++ (pkgs.lib).optionals (!(!flags.mandelbrot)) [
            (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
            (hsPkgs."accelerate-fft" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-fft"))
            (hsPkgs."accelerate-io" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-io"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."fclabels" or ((hsPkgs.pkgs-errors).buildDepError "fclabels"))
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            (hsPkgs."gloss-accelerate" or ((hsPkgs.pkgs-errors).buildDepError "gloss-accelerate"))
            ];
          buildable = if !flags.mandelbrot then false else true;
          };
        "accelerate-fluid" = {
          depends = ((pkgs.lib).optional (flags.cuda) (hsPkgs."accelerate-cuda" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-cuda")) ++ (pkgs.lib).optional (flags.ekg) (hsPkgs."ekg" or ((hsPkgs.pkgs-errors).buildDepError "ekg"))) ++ (pkgs.lib).optionals (!(!flags.fluid)) [
            (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
            (hsPkgs."accelerate-io" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-io"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bmp" or ((hsPkgs.pkgs-errors).buildDepError "bmp"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."fclabels" or ((hsPkgs.pkgs-errors).buildDepError "fclabels"))
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            ];
          buildable = if !flags.fluid then false else true;
          };
        "accelerate-nbody" = {
          depends = ((pkgs.lib).optional (flags.cuda) (hsPkgs."accelerate-cuda" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-cuda")) ++ (pkgs.lib).optional (flags.ekg) (hsPkgs."ekg" or ((hsPkgs.pkgs-errors).buildDepError "ekg"))) ++ (pkgs.lib).optionals (!(!flags.nbody)) [
            (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."fclabels" or ((hsPkgs.pkgs-errors).buildDepError "fclabels"))
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            (hsPkgs."mwc-random" or ((hsPkgs.pkgs-errors).buildDepError "mwc-random"))
            ];
          buildable = if !flags.nbody then false else true;
          };
        "accelerate-smoothlife" = {
          depends = ((pkgs.lib).optional (flags.cuda) (hsPkgs."accelerate-cuda" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-cuda")) ++ (pkgs.lib).optional (flags.ekg) (hsPkgs."ekg" or ((hsPkgs.pkgs-errors).buildDepError "ekg"))) ++ (pkgs.lib).optionals (!(!flags.smoothlife)) [
            (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
            (hsPkgs."accelerate-fft" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-fft"))
            (hsPkgs."accelerate-io" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-io"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."fclabels" or ((hsPkgs.pkgs-errors).buildDepError "fclabels"))
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            (hsPkgs."gloss-accelerate" or ((hsPkgs.pkgs-errors).buildDepError "gloss-accelerate"))
            (hsPkgs."mwc-random" or ((hsPkgs.pkgs-errors).buildDepError "mwc-random"))
            ];
          buildable = if !flags.smoothlife then false else true;
          };
        "accelerate-hashcat" = {
          depends = ((pkgs.lib).optional (flags.cuda) (hsPkgs."accelerate-cuda" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-cuda")) ++ (pkgs.lib).optional (flags.ekg) (hsPkgs."ekg" or ((hsPkgs.pkgs-errors).buildDepError "ekg"))) ++ (pkgs.lib).optionals (!(!flags.hashcat)) [
            (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
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
          depends = (pkgs.lib).optional (flags.cuda) (hsPkgs."accelerate-cuda" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-cuda")) ++ (pkgs.lib).optionals (!(!flags.fft)) [
            (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
            (hsPkgs."accelerate-io" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-io"))
            (hsPkgs."accelerate-fft" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-fft"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."fclabels" or ((hsPkgs.pkgs-errors).buildDepError "fclabels"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            ];
          buildable = if !flags.fft then false else true;
          };
        };
      };
    }