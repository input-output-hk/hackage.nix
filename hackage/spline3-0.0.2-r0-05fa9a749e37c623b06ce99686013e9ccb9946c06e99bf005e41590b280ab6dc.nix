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
    flags = { llvm = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "spline3"; version = "0.0.2"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Michael Orlitzky <michael@orlitzky.com>";
      author = "Michael Orlitzky";
      homepage = "http://michael.orlitzky.com/code/spline3.php";
      url = "";
      synopsis = "A parallel implementation of the Sorokina/Zeilfelder spline scheme.";
      description = "Interpolate volumetric data according to \"Local quasi-interpolation\nby cubic C^1 splines on type-6 tetrahedral partitions.\" The defaults\nare tailored to the MRI data contained in data/mri.bin from the\nStanford volume data archive at <http://graphics.stanford.edu/data/voldata/>.\n\nFor more information and examples, please see the project homepage at\n<http://michael.orlitzky.com/code/spline3.php>.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "spline3" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            (hsPkgs."repa" or (buildDepError "repa"))
            (hsPkgs."repa-algorithms" or (buildDepError "repa-algorithms"))
            (hsPkgs."repa-io" or (buildDepError "repa-io"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            ];
          };
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            ];
          };
        "testsuite" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            (hsPkgs."repa" or (buildDepError "repa"))
            (hsPkgs."repa-algorithms" or (buildDepError "repa-algorithms"))
            (hsPkgs."repa-io" or (buildDepError "repa-io"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            ];
          };
        };
      };
    }