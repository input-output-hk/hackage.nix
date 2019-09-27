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
    flags = { llvm-cpu = true; llvm-ptx = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "accelerate-blas"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tmcdonell@cse.unsw.edu.au";
      author = "Trevor L. McDonell";
      homepage = "";
      url = "";
      synopsis = "Numeric Linear Algebra in Accelerate";
      description = "Linear systems, matrix decompositions, and other numerical computations for\nuse in Accelerate. Most operations are implemented efficiently via FFI calls\nto BLAS and LAPACK\n\nFor further information refer to the main /Accelerate/ package:\n<http://hackage.haskell.org/package/accelerate>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."accelerate" or (buildDepError "accelerate"))
          ] ++ (pkgs.lib).optionals (flags.llvm-cpu) [
          (hsPkgs."accelerate-llvm" or (buildDepError "accelerate-llvm"))
          (hsPkgs."accelerate-llvm-native" or (buildDepError "accelerate-llvm-native"))
          (hsPkgs."blas-hs" or (buildDepError "blas-hs"))
          (hsPkgs."llvm-hs-pure" or (buildDepError "llvm-hs-pure"))
          (hsPkgs."storable-complex" or (buildDepError "storable-complex"))
          ]) ++ (pkgs.lib).optionals (flags.llvm-ptx) [
          (hsPkgs."accelerate-llvm" or (buildDepError "accelerate-llvm"))
          (hsPkgs."accelerate-llvm-ptx" or (buildDepError "accelerate-llvm-ptx"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."cublas" or (buildDepError "cublas"))
          (hsPkgs."cuda" or (buildDepError "cuda"))
          (hsPkgs."file-embed" or (buildDepError "file-embed"))
          (hsPkgs."llvm-hs-pure" or (buildDepError "llvm-hs-pure"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."storable-complex" or (buildDepError "storable-complex"))
          ];
        buildable = true;
        };
      tests = {
        "accelerate-blas-test" = {
          depends = ([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."accelerate" or (buildDepError "accelerate"))
            (hsPkgs."accelerate-blas" or (buildDepError "accelerate-blas"))
            (hsPkgs."hedgehog" or (buildDepError "hedgehog"))
            ] ++ (pkgs.lib).optional (flags.llvm-cpu) (hsPkgs."accelerate-llvm-native" or (buildDepError "accelerate-llvm-native"))) ++ (pkgs.lib).optional (flags.llvm-ptx) (hsPkgs."accelerate-llvm-ptx" or (buildDepError "accelerate-llvm-ptx"));
          buildable = true;
          };
        };
      benchmarks = {
        "accelerate-blas-bench" = {
          depends = ([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."accelerate" or (buildDepError "accelerate"))
            (hsPkgs."accelerate-blas" or (buildDepError "accelerate-blas"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
            (hsPkgs."mwc-random-accelerate" or (buildDepError "mwc-random-accelerate"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
            ] ++ (pkgs.lib).optional (flags.llvm-cpu) (hsPkgs."accelerate-llvm-native" or (buildDepError "accelerate-llvm-native"))) ++ (pkgs.lib).optional (flags.llvm-ptx) (hsPkgs."accelerate-llvm-ptx" or (buildDepError "accelerate-llvm-ptx"));
          buildable = true;
          };
        };
      };
    }