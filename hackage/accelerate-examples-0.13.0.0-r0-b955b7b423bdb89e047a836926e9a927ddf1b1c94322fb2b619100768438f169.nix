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
            (hsPkgs."accelerate" or (buildDepError "accelerate"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."random" or (buildDepError "random"))
            ] ++ (pkgs.lib).optionals (flags.cuda) [
            (hsPkgs."accelerate-cuda" or (buildDepError "accelerate-cuda"))
            (hsPkgs."cuda" or (buildDepError "cuda"))
            ]) ++ (pkgs.lib).optional (flags.opencl) (hsPkgs."accelerate-opencl" or (buildDepError "accelerate-opencl"));
          };
        "accelerate-examples" = {
          depends = ([
            (hsPkgs."accelerate" or (buildDepError "accelerate"))
            (hsPkgs."accelerate-io" or (buildDepError "accelerate-io"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."bytestring-lexing" or (buildDepError "bytestring-lexing"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hashtables" or (buildDepError "hashtables"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
            (hsPkgs."pgm" or (buildDepError "pgm"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."repa" or (buildDepError "repa"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."vector-algorithms" or (buildDepError "vector-algorithms"))
            ] ++ (pkgs.lib).optional (flags.cuda) (hsPkgs."accelerate-cuda" or (buildDepError "accelerate-cuda"))) ++ (pkgs.lib).optional (flags.opencl) (hsPkgs."accelerate-opencl" or (buildDepError "accelerate-opencl"));
          libs = [ (pkgs."stdc++" or (sysDepError "stdc++")) ];
          };
        "accelerate-crystal" = {
          depends = ([
            (hsPkgs."accelerate" or (buildDepError "accelerate"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."fclabels" or (buildDepError "fclabels"))
            (hsPkgs."gloss" or (buildDepError "gloss"))
            ] ++ (pkgs.lib).optional (flags.cuda) (hsPkgs."accelerate-cuda" or (buildDepError "accelerate-cuda"))) ++ (pkgs.lib).optional (flags.opencl) (hsPkgs."accelerate-opencl" or (buildDepError "accelerate-opencl"));
          };
        "accelerate-canny" = {
          depends = ([
            (hsPkgs."accelerate" or (buildDepError "accelerate"))
            (hsPkgs."accelerate-io" or (buildDepError "accelerate-io"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."fclabels" or (buildDepError "fclabels"))
            (hsPkgs."repa" or (buildDepError "repa"))
            (hsPkgs."repa-io" or (buildDepError "repa-io"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ] ++ (pkgs.lib).optional (flags.cuda) (hsPkgs."accelerate-cuda" or (buildDepError "accelerate-cuda"))) ++ (pkgs.lib).optional (flags.opencl) (hsPkgs."accelerate-opencl" or (buildDepError "accelerate-opencl"));
          };
        "accelerate-mandelbrot" = {
          depends = ([
            (hsPkgs."accelerate" or (buildDepError "accelerate"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."fclabels" or (buildDepError "fclabels"))
            (hsPkgs."gloss" or (buildDepError "gloss"))
            ] ++ (pkgs.lib).optional (flags.cuda) (hsPkgs."accelerate-cuda" or (buildDepError "accelerate-cuda"))) ++ (pkgs.lib).optional (flags.opencl) (hsPkgs."accelerate-opencl" or (buildDepError "accelerate-opencl"));
          };
        "accelerate-fluid" = {
          depends = [
            (hsPkgs."accelerate" or (buildDepError "accelerate"))
            (hsPkgs."accelerate-io" or (buildDepError "accelerate-io"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bmp" or (buildDepError "bmp"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."fclabels" or (buildDepError "fclabels"))
            (hsPkgs."gloss" or (buildDepError "gloss"))
            ] ++ (pkgs.lib).optional (flags.cuda) (hsPkgs."accelerate-cuda" or (buildDepError "accelerate-cuda"));
          };
        "accelerate-nbody" = {
          depends = [
            (hsPkgs."accelerate" or (buildDepError "accelerate"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."fclabels" or (buildDepError "fclabels"))
            (hsPkgs."gloss" or (buildDepError "gloss"))
            ] ++ (pkgs.lib).optional (flags.cuda) (hsPkgs."accelerate-cuda" or (buildDepError "accelerate-cuda"));
          };
        "accelerate-smoothlife" = {
          depends = [
            (hsPkgs."accelerate" or (buildDepError "accelerate"))
            (hsPkgs."accelerate-fft" or (buildDepError "accelerate-fft"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."fclabels" or (buildDepError "fclabels"))
            (hsPkgs."gloss" or (buildDepError "gloss"))
            ] ++ (pkgs.lib).optional (flags.cuda) (hsPkgs."accelerate-cuda" or (buildDepError "accelerate-cuda"));
          };
        "accelerate-hashcat" = {
          depends = [
            (hsPkgs."accelerate" or (buildDepError "accelerate"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."bytestring-lexing" or (buildDepError "bytestring-lexing"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."fclabels" or (buildDepError "fclabels"))
            ] ++ (pkgs.lib).optional (flags.cuda) (hsPkgs."accelerate-cuda" or (buildDepError "accelerate-cuda"));
          };
        };
      };
    }