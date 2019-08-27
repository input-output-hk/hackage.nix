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
    flags = { cuda = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "hasktorch-indef"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sam Stites <fnz@fgvgrf.vb>, Austin Huang <nhfgvau@nyhz.zvg.rqh> - cipher:ROT13";
      author = "Hasktorch dev team";
      homepage = "https://github.com/hasktorch/hasktorch#readme";
      url = "";
      synopsis = "Core Hasktorch abstractions wrapping FFI bindings";
      description = "The hasktorch-indef package constitutes the main user API for hasktorch. It uses backpack signatures to generically glue low-level FFI bindings to a high-level interface.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."backprop" or (buildDepError "backprop"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."dimensions" or (buildDepError "dimensions"))
          (hsPkgs."hasktorch-signatures" or (buildDepError "hasktorch-signatures"))
          (hsPkgs."hasktorch-signatures-support" or (buildDepError "hasktorch-signatures-support"))
          (hsPkgs."hasktorch-types-th" or (buildDepError "hasktorch-types-th"))
          (hsPkgs."hasktorch-ffi-th" or (buildDepError "hasktorch-ffi-th"))
          (hsPkgs."managed" or (buildDepError "managed"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
          (hsPkgs."singletons" or (buildDepError "singletons"))
          (hsPkgs."ghc-typelits-natnormalise" or (buildDepError "ghc-typelits-natnormalise"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ] ++ (pkgs.lib).optionals (flags.cuda) [
          (hsPkgs."hasktorch-types-thc" or (buildDepError "hasktorch-types-thc"))
          (hsPkgs."cuda" or (buildDepError "cuda"))
          ];
        };
      sublibs = {
        "hasktorch-indef-floating" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hasktorch-indef" or (buildDepError "hasktorch-indef"))
            (hsPkgs."hasktorch-signatures-partial" or (buildDepError "hasktorch-signatures-partial"))
            ];
          };
        };
      tests = {
        "spec-double-th" = {
          depends = [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."backprop" or (buildDepError "backprop"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."dimensions" or (buildDepError "dimensions"))
            (hsPkgs."ghc-typelits-natnormalise" or (buildDepError "ghc-typelits-natnormalise"))
            (hsPkgs."hasktorch-indef-floating" or (buildDepError "hasktorch-indef-floating"))
            (hsPkgs."hasktorch-ffi-th" or (buildDepError "hasktorch-ffi-th"))
            (hsPkgs."hasktorch-types-th" or (buildDepError "hasktorch-types-th"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."singletons" or (buildDepError "singletons"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          };
        };
      };
    }