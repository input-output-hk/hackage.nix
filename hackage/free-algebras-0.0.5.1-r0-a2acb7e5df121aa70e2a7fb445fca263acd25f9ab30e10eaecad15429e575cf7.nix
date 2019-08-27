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
    flags = { develop = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "free-algebras"; version = "0.0.5.1"; };
      license = "MPL-2.0";
      copyright = "(c) 2018 Marcin Szamotulski";
      maintainer = "profunctor@pm.me";
      author = "Marcin Szamotulski";
      homepage = "https://github.com/coot/free-algebras#readme";
      url = "";
      synopsis = "Free algebras in Haskell.";
      description = "Universal algebra approach to free algebras including higher kinded algebraic structures like functors, applicative functors or monads.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."constraints" or (buildDepError "constraints"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."data-fix" or (buildDepError "data-fix"))
          (hsPkgs."dlist" or (buildDepError "dlist"))
          (hsPkgs."free" or (buildDepError "free"))
          (hsPkgs."groups" or (buildDepError "groups"))
          (hsPkgs."kan-extensions" or (buildDepError "kan-extensions"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."natural-numbers" or (buildDepError "natural-numbers"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        };
      tests = {
        "free-algebras-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."constraints" or (buildDepError "constraints"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."data-fix" or (buildDepError "data-fix"))
            (hsPkgs."dlist" or (buildDepError "dlist"))
            (hsPkgs."free" or (buildDepError "free"))
            (hsPkgs."free-algebras" or (buildDepError "free-algebras"))
            (hsPkgs."groups" or (buildDepError "groups"))
            (hsPkgs."hedgehog" or (buildDepError "hedgehog"))
            (hsPkgs."kan-extensions" or (buildDepError "kan-extensions"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."natural-numbers" or (buildDepError "natural-numbers"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          };
        };
      };
    }