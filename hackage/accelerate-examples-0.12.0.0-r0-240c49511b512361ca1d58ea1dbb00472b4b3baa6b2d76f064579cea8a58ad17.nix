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
    flags = { cuda = true; opencl = true; io = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "accelerate-examples"; version = "0.12.0.0"; };
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
          depends = (([
            (hsPkgs."accelerate" or (buildDepError "accelerate"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."base" or (buildDepError "base"))
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
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."vector-algorithms" or (buildDepError "vector-algorithms"))
            ] ++ (pkgs.lib).optional (flags.cuda) (hsPkgs."accelerate-cuda" or (buildDepError "accelerate-cuda"))) ++ (pkgs.lib).optional (flags.opencl) (hsPkgs."accelerate-opencl" or (buildDepError "accelerate-opencl"))) ++ (pkgs.lib).optional (flags.io) (hsPkgs."accelerate-io" or (buildDepError "accelerate-io"));
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
        };
      };
    }