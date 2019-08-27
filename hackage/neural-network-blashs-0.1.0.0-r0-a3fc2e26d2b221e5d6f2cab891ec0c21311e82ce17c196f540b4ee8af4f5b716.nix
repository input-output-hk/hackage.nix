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
    flags = { vec128 = false; vec256 = false; vec512 = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "neural-network-blashs"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jiasenwu@hotmail.com";
      author = "Jiasen Wu";
      homepage = "https://github.com/pierric/neural-network";
      url = "";
      synopsis = "Yet Another High Performance and Extendable Neural Network in Haskell";
      description = "Provides execution backend of neural network on top of blas-hs.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."blas-hs" or (buildDepError "blas-hs"))
          (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."constraints" or (buildDepError "constraints"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          (hsPkgs."neural-network-base" or (buildDepError "neural-network-base"))
          ];
        };
      tests = {
        "s1" = {
          depends = [
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."blas-hs" or (buildDepError "blas-hs"))
            (hsPkgs."neural-network-base" or (buildDepError "neural-network-base"))
            ];
          };
        };
      };
    }