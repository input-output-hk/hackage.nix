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
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "fpnla-examples"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Pablo Perdomo <pperdomo@fing.edu.uy>, Mauro Blanco <mblanco@fing.edu.uy>";
      author = "Pablo Perdomo, Mauro Blanco";
      homepage = "";
      url = "";
      synopsis = "Example implementations for FPNLA library";
      description = "\nThis package provides many example implementations of the operations defined in package @fpnla@ using various data structures and algorithms.\n\nIMPORTANT: Many algorithms are only partially implemented\n\nThe structures currently used are:\n\n- @hmatrix@ <http://hackage.haskell.org/package/hmatrix>\n\n- @vector@ <http://hackage.haskell.org/package/vector>\n\n- @array@ <http://hackage.haskell.org/package/array>\n\n- @repa arrays@ <http://hackage.haskell.org/package/repa>\n\n- @accelerate arrays@ <http://hackage.haskell.org/package/accelerate>\n\n- @array@ <http://hackage.haskell.org/package/array>\n\n- Haskell lists <http://hackage.haskell.org/package/base-4.6.0.1/docs/Data-List.html>\n\nOperations are parallelized using the @parallel@ framework (<http://hackage.haskell.org/package/parallel>), @Monad-Par@ (<http://hackage.haskell.org/package/monad-par>), @Repa@ (<http://hackage.haskell.org/package/repa>) and @Accelerate@ (<http://hackage.haskell.org/package/accelerate>).\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."accelerate" or (buildDepError "accelerate"))
          (hsPkgs."fpnla" or (buildDepError "fpnla"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."parallel" or (buildDepError "parallel"))
          (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
          (hsPkgs."repa" or (buildDepError "repa"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."linear-algebra-cblas" or (buildDepError "linear-algebra-cblas"))
          (hsPkgs."monad-par" or (buildDepError "monad-par"))
          ];
        };
      tests = {
        "test-fpnla-blas" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."fpnla" or (buildDepError "fpnla"))
            (hsPkgs."fpnla-examples" or (buildDepError "fpnla-examples"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."accelerate" or (buildDepError "accelerate"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
            (hsPkgs."repa" or (buildDepError "repa"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."linear-algebra-cblas" or (buildDepError "linear-algebra-cblas"))
            (hsPkgs."monad-par" or (buildDepError "monad-par"))
            ];
          };
        "test-fpnla-lapack" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."fpnla" or (buildDepError "fpnla"))
            (hsPkgs."fpnla-examples" or (buildDepError "fpnla-examples"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."accelerate" or (buildDepError "accelerate"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
            (hsPkgs."repa" or (buildDepError "repa"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."linear-algebra-cblas" or (buildDepError "linear-algebra-cblas"))
            (hsPkgs."monad-par" or (buildDepError "monad-par"))
            ];
          };
        };
      };
    }