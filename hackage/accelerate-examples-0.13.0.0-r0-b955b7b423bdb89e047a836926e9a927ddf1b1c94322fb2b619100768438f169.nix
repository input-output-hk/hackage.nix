{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
            (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            ] ++ (pkgs.lib).optionals (flags.cuda) [
            (hsPkgs."accelerate-cuda" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-cuda"))
            (hsPkgs."cuda" or ((hsPkgs.pkgs-errors).buildDepError "cuda"))
            ]) ++ (pkgs.lib).optional (flags.opencl) (hsPkgs."accelerate-opencl" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-opencl"));
          buildable = true;
          };
        "accelerate-examples" = {
          depends = ([
            (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
            (hsPkgs."accelerate-io" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-io"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."bytestring-lexing" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-lexing"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."hashtables" or ((hsPkgs.pkgs-errors).buildDepError "hashtables"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."mwc-random" or ((hsPkgs.pkgs-errors).buildDepError "mwc-random"))
            (hsPkgs."pgm" or ((hsPkgs.pkgs-errors).buildDepError "pgm"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            (hsPkgs."repa" or ((hsPkgs.pkgs-errors).buildDepError "repa"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."vector-algorithms" or ((hsPkgs.pkgs-errors).buildDepError "vector-algorithms"))
            ] ++ (pkgs.lib).optional (flags.cuda) (hsPkgs."accelerate-cuda" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-cuda"))) ++ (pkgs.lib).optional (flags.opencl) (hsPkgs."accelerate-opencl" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-opencl"));
          libs = [
            (pkgs."stdc++" or ((hsPkgs.pkgs-errors).sysDepError "stdc++"))
            ];
          buildable = true;
          };
        "accelerate-crystal" = {
          depends = ([
            (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."fclabels" or ((hsPkgs.pkgs-errors).buildDepError "fclabels"))
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            ] ++ (pkgs.lib).optional (flags.cuda) (hsPkgs."accelerate-cuda" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-cuda"))) ++ (pkgs.lib).optional (flags.opencl) (hsPkgs."accelerate-opencl" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-opencl"));
          buildable = true;
          };
        "accelerate-canny" = {
          depends = ([
            (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
            (hsPkgs."accelerate-io" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-io"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."fclabels" or ((hsPkgs.pkgs-errors).buildDepError "fclabels"))
            (hsPkgs."repa" or ((hsPkgs.pkgs-errors).buildDepError "repa"))
            (hsPkgs."repa-io" or ((hsPkgs.pkgs-errors).buildDepError "repa-io"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ] ++ (pkgs.lib).optional (flags.cuda) (hsPkgs."accelerate-cuda" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-cuda"))) ++ (pkgs.lib).optional (flags.opencl) (hsPkgs."accelerate-opencl" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-opencl"));
          buildable = true;
          };
        "accelerate-mandelbrot" = {
          depends = ([
            (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."fclabels" or ((hsPkgs.pkgs-errors).buildDepError "fclabels"))
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            ] ++ (pkgs.lib).optional (flags.cuda) (hsPkgs."accelerate-cuda" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-cuda"))) ++ (pkgs.lib).optional (flags.opencl) (hsPkgs."accelerate-opencl" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-opencl"));
          buildable = true;
          };
        "accelerate-fluid" = {
          depends = [
            (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
            (hsPkgs."accelerate-io" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-io"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bmp" or ((hsPkgs.pkgs-errors).buildDepError "bmp"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."fclabels" or ((hsPkgs.pkgs-errors).buildDepError "fclabels"))
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            ] ++ (pkgs.lib).optional (flags.cuda) (hsPkgs."accelerate-cuda" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-cuda"));
          buildable = true;
          };
        "accelerate-nbody" = {
          depends = [
            (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."fclabels" or ((hsPkgs.pkgs-errors).buildDepError "fclabels"))
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            ] ++ (pkgs.lib).optional (flags.cuda) (hsPkgs."accelerate-cuda" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-cuda"));
          buildable = true;
          };
        "accelerate-smoothlife" = {
          depends = [
            (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
            (hsPkgs."accelerate-fft" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-fft"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."fclabels" or ((hsPkgs.pkgs-errors).buildDepError "fclabels"))
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            ] ++ (pkgs.lib).optional (flags.cuda) (hsPkgs."accelerate-cuda" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-cuda"));
          buildable = true;
          };
        "accelerate-hashcat" = {
          depends = [
            (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."bytestring-lexing" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-lexing"))
            (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."fclabels" or ((hsPkgs.pkgs-errors).buildDepError "fclabels"))
            ] ++ (pkgs.lib).optional (flags.cuda) (hsPkgs."accelerate-cuda" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-cuda"));
          buildable = true;
          };
        };
      };
    }