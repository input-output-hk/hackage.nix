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
    flags = { gui = true; cuda = true; opencl = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "accelerate-examples"; version = "0.13.0.0"; };
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
          depends = ([
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ] ++ (pkgs.lib).optionals (flags.cuda) [
            (hsPkgs."accelerate-cuda" or (errorHandler.buildDepError "accelerate-cuda"))
            (hsPkgs."cuda" or (errorHandler.buildDepError "cuda"))
            ]) ++ (pkgs.lib).optional (flags.opencl) (hsPkgs."accelerate-opencl" or (errorHandler.buildDepError "accelerate-opencl"));
          buildable = true;
          };
        "accelerate-examples" = {
          depends = ([
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."accelerate-io" or (errorHandler.buildDepError "accelerate-io"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."bytestring-lexing" or (errorHandler.buildDepError "bytestring-lexing"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hashtables" or (errorHandler.buildDepError "hashtables"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."pgm" or (errorHandler.buildDepError "pgm"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."repa" or (errorHandler.buildDepError "repa"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vector-algorithms" or (errorHandler.buildDepError "vector-algorithms"))
            ] ++ (pkgs.lib).optional (flags.cuda) (hsPkgs."accelerate-cuda" or (errorHandler.buildDepError "accelerate-cuda"))) ++ (pkgs.lib).optional (flags.opencl) (hsPkgs."accelerate-opencl" or (errorHandler.buildDepError "accelerate-opencl"));
          libs = [ (pkgs."stdc++" or (errorHandler.sysDepError "stdc++")) ];
          buildable = true;
          };
        "accelerate-crystal" = {
          depends = ([
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
            ] ++ (pkgs.lib).optional (flags.cuda) (hsPkgs."accelerate-cuda" or (errorHandler.buildDepError "accelerate-cuda"))) ++ (pkgs.lib).optional (flags.opencl) (hsPkgs."accelerate-opencl" or (errorHandler.buildDepError "accelerate-opencl"));
          buildable = true;
          };
        "accelerate-canny" = {
          depends = ([
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."accelerate-io" or (errorHandler.buildDepError "accelerate-io"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
            (hsPkgs."repa" or (errorHandler.buildDepError "repa"))
            (hsPkgs."repa-io" or (errorHandler.buildDepError "repa-io"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ] ++ (pkgs.lib).optional (flags.cuda) (hsPkgs."accelerate-cuda" or (errorHandler.buildDepError "accelerate-cuda"))) ++ (pkgs.lib).optional (flags.opencl) (hsPkgs."accelerate-opencl" or (errorHandler.buildDepError "accelerate-opencl"));
          buildable = true;
          };
        "accelerate-mandelbrot" = {
          depends = ([
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
            ] ++ (pkgs.lib).optional (flags.cuda) (hsPkgs."accelerate-cuda" or (errorHandler.buildDepError "accelerate-cuda"))) ++ (pkgs.lib).optional (flags.opencl) (hsPkgs."accelerate-opencl" or (errorHandler.buildDepError "accelerate-opencl"));
          buildable = true;
          };
        "accelerate-fluid" = {
          depends = [
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."accelerate-io" or (errorHandler.buildDepError "accelerate-io"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bmp" or (errorHandler.buildDepError "bmp"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
            ] ++ (pkgs.lib).optional (flags.cuda) (hsPkgs."accelerate-cuda" or (errorHandler.buildDepError "accelerate-cuda"));
          buildable = true;
          };
        "accelerate-nbody" = {
          depends = [
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
            ] ++ (pkgs.lib).optional (flags.cuda) (hsPkgs."accelerate-cuda" or (errorHandler.buildDepError "accelerate-cuda"));
          buildable = true;
          };
        "accelerate-smoothlife" = {
          depends = [
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."accelerate-fft" or (errorHandler.buildDepError "accelerate-fft"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
            ] ++ (pkgs.lib).optional (flags.cuda) (hsPkgs."accelerate-cuda" or (errorHandler.buildDepError "accelerate-cuda"));
          buildable = true;
          };
        "accelerate-hashcat" = {
          depends = [
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."bytestring-lexing" or (errorHandler.buildDepError "bytestring-lexing"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
            ] ++ (pkgs.lib).optional (flags.cuda) (hsPkgs."accelerate-cuda" or (errorHandler.buildDepError "accelerate-cuda"));
          buildable = true;
          };
        };
      };
    }