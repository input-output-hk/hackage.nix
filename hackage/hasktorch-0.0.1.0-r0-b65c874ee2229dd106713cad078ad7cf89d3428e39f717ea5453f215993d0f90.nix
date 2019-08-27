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
    flags = { cuda = false; lite = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "hasktorch"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sam Stites <fnz@fgvgrf.vb>, Austin Huang <nhfgvau@nyhz.zvg.rqh> - cipher:ROT13";
      author = "Hasktorch dev team";
      homepage = "https://github.com/hasktorch/hasktorch#readme";
      url = "";
      synopsis = "Torch for tensors and neural networks in Haskell";
      description = "Hasktorch is a library for tensors and neural networks in Haskell. It is an independent open source community project which leverages the core C libraries shared by Torch and PyTorch. This library leverages @cabal v2-build@ and @backpack@. *Note that this project is in early development and should only be used by contributing developers. Expect substantial changes to the library API as it evolves. Contributions and PRs are welcome (see details on github).*";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."dimensions" or (buildDepError "dimensions"))
          (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
          (hsPkgs."singletons" or (buildDepError "singletons"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."hasktorch-cpu" or (buildDepError "hasktorch-cpu"))
          (hsPkgs."hasktorch-ffi-th" or (buildDepError "hasktorch-ffi-th"))
          (hsPkgs."hasktorch-types-th" or (buildDepError "hasktorch-types-th"))
          ] ++ (pkgs.lib).optional (flags.cuda) (hsPkgs."hasktorch-gpu" or (buildDepError "hasktorch-gpu"));
        };
      sublibs = {
        "hasktorch-cpu" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hasktorch-types-th" or (buildDepError "hasktorch-types-th"))
            (hsPkgs."dimensions" or (buildDepError "dimensions"))
            (hsPkgs."hasktorch-ffi-th" or (buildDepError "hasktorch-ffi-th"))
            (hsPkgs."hasktorch-types-th" or (buildDepError "hasktorch-types-th"))
            (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
            (hsPkgs."singletons" or (buildDepError "singletons"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."hasktorch-indef-floating" or (buildDepError "hasktorch-indef-floating"))
            (hsPkgs."hasktorch-indef-signed" or (buildDepError "hasktorch-indef-signed"))
            ] ++ (pkgs.lib).optional (!flags.lite) (hsPkgs."hasktorch-indef-unsigned" or (buildDepError "hasktorch-indef-unsigned"));
          };
        "hasktorch-gpu" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hasktorch-types-th" or (buildDepError "hasktorch-types-th"))
            (hsPkgs."dimensions" or (buildDepError "dimensions"))
            (hsPkgs."hasktorch-ffi-th" or (buildDepError "hasktorch-ffi-th"))
            (hsPkgs."hasktorch-types-th" or (buildDepError "hasktorch-types-th"))
            (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
            (hsPkgs."singletons" or (buildDepError "singletons"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."hasktorch-indef-floating" or (buildDepError "hasktorch-indef-floating"))
            (hsPkgs."hasktorch-indef-signed" or (buildDepError "hasktorch-indef-signed"))
            (hsPkgs."hasktorch-ffi-thc" or (buildDepError "hasktorch-ffi-thc"))
            (hsPkgs."hasktorch-types-thc" or (buildDepError "hasktorch-types-thc"))
            ] ++ (pkgs.lib).optional (!flags.lite) (hsPkgs."hasktorch-indef-unsigned" or (buildDepError "hasktorch-indef-unsigned"));
          };
        "hasktorch-indef-unsigned" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hasktorch-signatures-partial" or (buildDepError "hasktorch-signatures-partial"))
            (hsPkgs."hasktorch-indef" or (buildDepError "hasktorch-indef"))
            ];
          };
        "hasktorch-indef-signed" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hasktorch-signatures-partial" or (buildDepError "hasktorch-signatures-partial"))
            (hsPkgs."hasktorch-indef" or (buildDepError "hasktorch-indef"))
            ];
          };
        "hasktorch-indef-floating" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hasktorch-indef" or (buildDepError "hasktorch-indef"))
            (hsPkgs."hasktorch-signatures-partial" or (buildDepError "hasktorch-signatures-partial"))
            ];
          };
        };
      exes = {
        "isdefinite-cpu" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hasktorch-cpu" or (buildDepError "hasktorch-cpu"))
            ];
          };
        "isdefinite-gpu" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hasktorch-gpu" or (buildDepError "hasktorch-gpu"))
            ];
          };
        "isdefinite" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hasktorch" or (buildDepError "hasktorch"))
            ];
          };
        "memcheck" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hasktorch" or (buildDepError "hasktorch"))
            ];
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."backprop" or (buildDepError "backprop"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."dimensions" or (buildDepError "dimensions"))
            (hsPkgs."ghc-typelits-natnormalise" or (buildDepError "ghc-typelits-natnormalise"))
            (hsPkgs."hasktorch" or (buildDepError "hasktorch"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."singletons" or (buildDepError "singletons"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."microlens-platform" or (buildDepError "microlens-platform"))
            (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."generic-lens" or (buildDepError "generic-lens"))
            ];
          };
        };
      };
    }