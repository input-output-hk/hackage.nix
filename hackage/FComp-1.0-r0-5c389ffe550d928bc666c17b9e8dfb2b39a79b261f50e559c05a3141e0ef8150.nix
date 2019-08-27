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
    flags = { quickcheck2 = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "FComp"; version = "1.0"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2014 University of Oxford";
      maintainer = "jpm@cs.ox.ac.uk";
      author = "Jose Pedro Magalhaes";
      homepage = "";
      url = "";
      synopsis = "Compose music";
      description = "Compose music";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."ListLike" or (buildDepError "ListLike"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."uu-parsinglib" or (buildDepError "uu-parsinglib"))
          (hsPkgs."HarmTrace-Base" or (buildDepError "HarmTrace-Base"))
          (hsPkgs."instant-generics" or (buildDepError "instant-generics"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          (hsPkgs."haskore" or (buildDepError "haskore"))
          (hsPkgs."midi" or (buildDepError "midi"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."time" or (buildDepError "time"))
          ] ++ [ (hsPkgs."QuickCheck" or (buildDepError "QuickCheck")) ];
        };
      exes = {
        "fcomp" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."ListLike" or (buildDepError "ListLike"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."uu-parsinglib" or (buildDepError "uu-parsinglib"))
            (hsPkgs."HarmTrace-Base" or (buildDepError "HarmTrace-Base"))
            (hsPkgs."instant-generics" or (buildDepError "instant-generics"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            (hsPkgs."haskore" or (buildDepError "haskore"))
            (hsPkgs."midi" or (buildDepError "midi"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."time" or (buildDepError "time"))
            ] ++ [ (hsPkgs."QuickCheck" or (buildDepError "QuickCheck")) ];
          };
        };
      };
    }