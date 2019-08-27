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
      identifier = { name = "accelerate-bignum"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "BSD3";
      maintainer = "Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>";
      author = "Trevor L. McDonell";
      homepage = "https://github.com/tmcdonell/accelerate-bignum";
      url = "";
      synopsis = "Fixed-length large integer arithmetic for Accelerate";
      description = "This package provides fixed-length large integer types and arithmetic\noperations for Accelerate. Signed and unsigned 96, 128, 160, 192, 224, 256,\nand 512-bit types are predefined.\n\nRefer to the main /Accelerate/ package for more information:\n<http://hackage.haskell.org/package/accelerate>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."accelerate" or (buildDepError "accelerate"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          ] ++ (pkgs.lib).optionals (flags.llvm-cpu) [
          (hsPkgs."accelerate-llvm" or (buildDepError "accelerate-llvm"))
          (hsPkgs."accelerate-llvm-native" or (buildDepError "accelerate-llvm-native"))
          (hsPkgs."llvm-hs-pure" or (buildDepError "llvm-hs-pure"))
          ]) ++ (pkgs.lib).optionals (flags.llvm-ptx) [
          (hsPkgs."accelerate-llvm" or (buildDepError "accelerate-llvm"))
          (hsPkgs."accelerate-llvm-ptx" or (buildDepError "accelerate-llvm-ptx"))
          (hsPkgs."llvm-hs-pure" or (buildDepError "llvm-hs-pure"))
          ];
        };
      tests = {
        "test-llvm-native" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."accelerate" or (buildDepError "accelerate"))
            (hsPkgs."accelerate-bignum" or (buildDepError "accelerate-bignum"))
            (hsPkgs."accelerate-llvm-native" or (buildDepError "accelerate-llvm-native"))
            (hsPkgs."hedgehog" or (buildDepError "hedgehog"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hedgehog" or (buildDepError "tasty-hedgehog"))
            ];
          };
        "test-llvm-ptx" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."accelerate" or (buildDepError "accelerate"))
            (hsPkgs."accelerate-bignum" or (buildDepError "accelerate-bignum"))
            (hsPkgs."accelerate-llvm-ptx" or (buildDepError "accelerate-llvm-ptx"))
            (hsPkgs."hedgehog" or (buildDepError "hedgehog"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hedgehog" or (buildDepError "tasty-hedgehog"))
            ];
          };
        };
      benchmarks = {
        "accelerate-bignum-bench" = {
          depends = ([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."accelerate" or (buildDepError "accelerate"))
            (hsPkgs."accelerate-bignum" or (buildDepError "accelerate-bignum"))
            (hsPkgs."accelerate-io" or (buildDepError "accelerate-io"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."vector-th-unbox" or (buildDepError "vector-th-unbox"))
            (hsPkgs."wide-word" or (buildDepError "wide-word"))
            ] ++ (pkgs.lib).optional (flags.llvm-cpu) (hsPkgs."accelerate-llvm-native" or (buildDepError "accelerate-llvm-native"))) ++ (pkgs.lib).optional (flags.llvm-ptx) (hsPkgs."accelerate-llvm-ptx" or (buildDepError "accelerate-llvm-ptx"));
          };
        };
      };
    }