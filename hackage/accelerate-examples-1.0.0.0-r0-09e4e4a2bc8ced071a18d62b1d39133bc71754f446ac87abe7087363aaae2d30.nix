let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."accelerate" or (buildDepError "accelerate"))
          (hsPkgs."ansi-wl-pprint" or (buildDepError "ansi-wl-pprint"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."criterion" or (buildDepError "criterion"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."fclabels" or (buildDepError "fclabels"))
          (hsPkgs."HUnit" or (buildDepError "HUnit"))
          (hsPkgs."linear" or (buildDepError "linear"))
          (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."test-framework" or (buildDepError "test-framework"))
          (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
          (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
          ] ++ (pkgs.lib).optional (flags.cuda) (hsPkgs."accelerate-cuda" or (buildDepError "accelerate-cuda"))) ++ (pkgs.lib).optional (flags.llvm-cpu) (hsPkgs."accelerate-llvm-native" or (buildDepError "accelerate-llvm-native"))) ++ (pkgs.lib).optional (flags.llvm-ptx) (hsPkgs."accelerate-llvm-ptx" or (buildDepError "accelerate-llvm-ptx"))) ++ (pkgs.lib).optional (flags.cilk) (hsPkgs."accelerate-icc-opencl" or (buildDepError "accelerate-icc-opencl"))) ++ (pkgs.lib).optionals (flags.codespeed) [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."HTTP" or (buildDepError "HTTP"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."statistics" or (buildDepError "statistics"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          ];
        };
      exes = {
        "accelerate-nofib" = {
          depends = (pkgs.lib).optional (flags.cuda) (hsPkgs."accelerate-cuda" or (buildDepError "accelerate-cuda")) ++ (pkgs.lib).optionals (!(!flags.nofib)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."accelerate" or (buildDepError "accelerate"))
            (hsPkgs."accelerate-examples" or (buildDepError "accelerate-examples"))
            (hsPkgs."accelerate-fft" or (buildDepError "accelerate-fft"))
            (hsPkgs."accelerate-io" or (buildDepError "accelerate-io"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."fclabels" or (buildDepError "fclabels"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."pipes" or (buildDepError "pipes"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          libs = [ (pkgs."stdc++" or (sysDepError "stdc++")) ];
          };
        "accelerate-smvm" = {
          depends = (pkgs.lib).optionals (!(!flags.smvm)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."accelerate" or (buildDepError "accelerate"))
            (hsPkgs."accelerate-examples" or (buildDepError "accelerate-examples"))
            (hsPkgs."accelerate-io" or (buildDepError "accelerate-io"))
            (hsPkgs."fclabels" or (buildDepError "fclabels"))
            (hsPkgs."matrix-market-attoparsec" or (buildDepError "matrix-market-attoparsec"))
            (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
            (hsPkgs."scientific" or (buildDepError "scientific"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."vector-algorithms" or (buildDepError "vector-algorithms"))
            ];
          };
        "accelerate-crystal" = {
          depends = (pkgs.lib).optionals (!(!flags.crystal)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."accelerate" or (buildDepError "accelerate"))
            (hsPkgs."accelerate-examples" or (buildDepError "accelerate-examples"))
            (hsPkgs."colour-accelerate" or (buildDepError "colour-accelerate"))
            (hsPkgs."fclabels" or (buildDepError "fclabels"))
            (hsPkgs."gloss-raster-accelerate" or (buildDepError "gloss-raster-accelerate"))
            ];
          };
        "accelerate-tunnel" = {
          depends = (pkgs.lib).optionals (!(!flags.tunnel)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."accelerate" or (buildDepError "accelerate"))
            (hsPkgs."accelerate-examples" or (buildDepError "accelerate-examples"))
            (hsPkgs."fclabels" or (buildDepError "fclabels"))
            (hsPkgs."gloss-raster-accelerate" or (buildDepError "gloss-raster-accelerate"))
            (hsPkgs."lens-accelerate" or (buildDepError "lens-accelerate"))
            (hsPkgs."linear-accelerate" or (buildDepError "linear-accelerate"))
            ];
          };
        "accelerate-canny" = {
          depends = (pkgs.lib).optionals (!(!flags.canny)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."accelerate" or (buildDepError "accelerate"))
            (hsPkgs."accelerate-examples" or (buildDepError "accelerate-examples"))
            (hsPkgs."accelerate-io" or (buildDepError "accelerate-io"))
            (hsPkgs."colour-accelerate" or (buildDepError "colour-accelerate"))
            (hsPkgs."fclabels" or (buildDepError "fclabels"))
            (hsPkgs."repa" or (buildDepError "repa"))
            (hsPkgs."repa-io" or (buildDepError "repa-io"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        "accelerate-mandelbrot" = {
          depends = (pkgs.lib).optionals (!(!flags.mandelbrot)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."accelerate" or (buildDepError "accelerate"))
            (hsPkgs."accelerate-examples" or (buildDepError "accelerate-examples"))
            (hsPkgs."accelerate-io" or (buildDepError "accelerate-io"))
            (hsPkgs."colour-accelerate" or (buildDepError "colour-accelerate"))
            (hsPkgs."fclabels" or (buildDepError "fclabels"))
            (hsPkgs."gloss" or (buildDepError "gloss"))
            (hsPkgs."gloss-accelerate" or (buildDepError "gloss-accelerate"))
            ];
          };
        "accelerate-fluid" = {
          depends = (pkgs.lib).optionals (!(!flags.fluid)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."accelerate" or (buildDepError "accelerate"))
            (hsPkgs."accelerate-examples" or (buildDepError "accelerate-examples"))
            (hsPkgs."accelerate-io" or (buildDepError "accelerate-io"))
            (hsPkgs."bmp" or (buildDepError "bmp"))
            (hsPkgs."colour-accelerate" or (buildDepError "colour-accelerate"))
            (hsPkgs."fclabels" or (buildDepError "fclabels"))
            (hsPkgs."gloss" or (buildDepError "gloss"))
            (hsPkgs."gloss-rendering" or (buildDepError "gloss-rendering"))
            ];
          };
        "accelerate-nbody" = {
          depends = (pkgs.lib).optionals (!(!flags.nbody)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."accelerate" or (buildDepError "accelerate"))
            (hsPkgs."accelerate-examples" or (buildDepError "accelerate-examples"))
            (hsPkgs."fclabels" or (buildDepError "fclabels"))
            (hsPkgs."gloss" or (buildDepError "gloss"))
            (hsPkgs."lens-accelerate" or (buildDepError "lens-accelerate"))
            (hsPkgs."linear-accelerate" or (buildDepError "linear-accelerate"))
            (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
            ];
          };
        "accelerate-smoothlife" = {
          depends = (pkgs.lib).optional (flags.cuda) (hsPkgs."accelerate-cuda" or (buildDepError "accelerate-cuda")) ++ (pkgs.lib).optionals (!(!flags.smoothlife)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."accelerate" or (buildDepError "accelerate"))
            (hsPkgs."accelerate-examples" or (buildDepError "accelerate-examples"))
            (hsPkgs."accelerate-fft" or (buildDepError "accelerate-fft"))
            (hsPkgs."colour-accelerate" or (buildDepError "colour-accelerate"))
            (hsPkgs."fclabels" or (buildDepError "fclabels"))
            (hsPkgs."gloss" or (buildDepError "gloss"))
            (hsPkgs."gloss-accelerate" or (buildDepError "gloss-accelerate"))
            (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
            ];
          };
        "accelerate-hashcat" = {
          depends = (pkgs.lib).optionals (!(!flags.hashcat)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."accelerate" or (buildDepError "accelerate"))
            (hsPkgs."accelerate-examples" or (buildDepError "accelerate-examples"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."bytestring-lexing" or (buildDepError "bytestring-lexing"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."fclabels" or (buildDepError "fclabels"))
            (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
            ];
          };
        "accelerate-fft" = {
          depends = (pkgs.lib).optionals (!(!flags.fft)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."accelerate" or (buildDepError "accelerate"))
            (hsPkgs."accelerate-examples" or (buildDepError "accelerate-examples"))
            (hsPkgs."accelerate-fft" or (buildDepError "accelerate-fft"))
            (hsPkgs."accelerate-io" or (buildDepError "accelerate-io"))
            (hsPkgs."colour-accelerate" or (buildDepError "colour-accelerate"))
            (hsPkgs."fclabels" or (buildDepError "fclabels"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          };
        "accelerate-pagerank" = {
          depends = (pkgs.lib).optionals (!(!flags.pagerank)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."accelerate" or (buildDepError "accelerate"))
            (hsPkgs."accelerate-examples" or (buildDepError "accelerate-examples"))
            (hsPkgs."accelerate-io" or (buildDepError "accelerate-io"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."fclabels" or (buildDepError "fclabels"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."vector-algorithms" or (buildDepError "vector-algorithms"))
            ];
          };
        "accelerate-ray" = {
          depends = (pkgs.lib).optionals (!(!flags.ray)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."accelerate" or (buildDepError "accelerate"))
            (hsPkgs."accelerate-examples" or (buildDepError "accelerate-examples"))
            (hsPkgs."colour-accelerate" or (buildDepError "colour-accelerate"))
            (hsPkgs."fclabels" or (buildDepError "fclabels"))
            (hsPkgs."gloss" or (buildDepError "gloss"))
            (hsPkgs."gloss-accelerate" or (buildDepError "gloss-accelerate"))
            (hsPkgs."gloss-raster-accelerate" or (buildDepError "gloss-raster-accelerate"))
            (hsPkgs."lens-accelerate" or (buildDepError "lens-accelerate"))
            (hsPkgs."linear-accelerate" or (buildDepError "linear-accelerate"))
            ];
          };
        "accelerate-kmeans" = {
          depends = (pkgs.lib).optionals (!(!flags.kmeans)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."accelerate" or (buildDepError "accelerate"))
            (hsPkgs."accelerate-examples" or (buildDepError "accelerate-examples"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."fclabels" or (buildDepError "fclabels"))
            (hsPkgs."normaldistribution" or (buildDepError "normaldistribution"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          };
        };
      };
    }