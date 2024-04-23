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
    flags = { gui = true; cuda = true; opencl = true; io = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "accelerate-examples"; version = "0.12.1.0"; };
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
          depends = ([
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ] ++ pkgs.lib.optionals (flags.cuda) [
            (hsPkgs."accelerate-cuda" or (errorHandler.buildDepError "accelerate-cuda"))
            (hsPkgs."cuda" or (errorHandler.buildDepError "cuda"))
          ]) ++ pkgs.lib.optional (flags.opencl) (hsPkgs."accelerate-opencl" or (errorHandler.buildDepError "accelerate-opencl"));
          buildable = true;
        };
        "accelerate-examples" = {
          depends = (([
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
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
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vector-algorithms" or (errorHandler.buildDepError "vector-algorithms"))
          ] ++ pkgs.lib.optional (flags.cuda) (hsPkgs."accelerate-cuda" or (errorHandler.buildDepError "accelerate-cuda"))) ++ pkgs.lib.optional (flags.opencl) (hsPkgs."accelerate-opencl" or (errorHandler.buildDepError "accelerate-opencl"))) ++ pkgs.lib.optional (flags.io) (hsPkgs."accelerate-io" or (errorHandler.buildDepError "accelerate-io"));
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
          ] ++ pkgs.lib.optional (flags.cuda) (hsPkgs."accelerate-cuda" or (errorHandler.buildDepError "accelerate-cuda"))) ++ pkgs.lib.optional (flags.opencl) (hsPkgs."accelerate-opencl" or (errorHandler.buildDepError "accelerate-opencl"));
          buildable = true;
        };
        "accelerate-mandelbrot" = {
          depends = ([
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
          ] ++ pkgs.lib.optional (flags.cuda) (hsPkgs."accelerate-cuda" or (errorHandler.buildDepError "accelerate-cuda"))) ++ pkgs.lib.optional (flags.opencl) (hsPkgs."accelerate-opencl" or (errorHandler.buildDepError "accelerate-opencl"));
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
          ] ++ pkgs.lib.optional (flags.cuda) (hsPkgs."accelerate-cuda" or (errorHandler.buildDepError "accelerate-cuda"));
          buildable = true;
        };
      };
    };
  }