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
    flags = { openblas = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hmatrix-morpheus"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Alexander Ignatyev";
      maintainer = "ignatyev.alexander@gmail.com";
      author = "Alexander Ignatyev";
      homepage = "https://github.com/Alexander-Ignatyev/morpheus/tree/master/hmatrix-morpheus";
      url = "";
      synopsis = "Low-level machine learning auxiliary functions.";
      description = "Purely functional interface to morpheus based on hmatrix.\nMorpheus library contains a bunch of cache line aware numerical algorithms\nsuitable for using as a low-level primitives to build machine learning applications.\n\nExamples are in \"Numeric.Morpheus\" module.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
          ];
        libs = (pkgs.lib).optionals (system.isLinux) (if flags.openblas
          then [ (pkgs."openblas" or (sysDepError "openblas")) ]
          else [
            (pkgs."blas" or (sysDepError "blas"))
            (pkgs."lapack" or (sysDepError "lapack"))
            ]);
        frameworks = (pkgs.lib).optional (system.isOsx) (pkgs."Accelerate" or (sysDepError "Accelerate"));
        };
      tests = {
        "hmatrix-morpheus-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hmatrix-morpheus" or (buildDepError "hmatrix-morpheus"))
            (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            ];
          };
        };
      benchmarks = {
        "hmatrix-morpheus-bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hmatrix-morpheus" or (buildDepError "hmatrix-morpheus"))
            (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            ];
          };
        };
      };
    }