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
    flags = { no-vec = false; vec256 = false; vec512 = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "primitive-simd"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Anselm Jonas Scholl";
      maintainer = "anselm.scholl@tu-harburg.de";
      author = "Anselm Jonas Scholl";
      homepage = "";
      url = "";
      synopsis = "SIMD data types and functions";
      description = "This package provides a lifted version of the SIMD data types\nand instructions from ghc-prim.\n\nThe implementation is based on type families to provide a\nuniform interface to all different vector types. Instances\nfor numeric operations, 'Prim', 'Storable' and unboxed vector\ninstances are provided.\n\nAlthough not all processors support 256 or 512-bit vectors\nthis package provides a uniform interface. Vectors which\nare bigger than supported are modeled by combining smaller\nvectors. If the same code is compiled on a computer supporting\nlarger vectors the smaller vectors are replaced by larger\nvectors.\n\nNote: This package needs to be compiled with LLVM as the NCG\ndoes not know how to deal with SIMD-instructions. If LLVM is\nnot available, use -f no-vec to disable the use of SIMD instructions.\nWhile this will give you no speedup, it will work with plain\nHaskell (and should even work with GHCJS).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        buildable = true;
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."primitive-simd" or (buildDepError "primitive-simd"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }