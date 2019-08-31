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
    flags = {
      base-transformers-1 = true;
      base-transformers-2 = true;
      vector = true;
      containers = true;
      unordered-containers = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "functor-classes-compat"; version = "1"; };
      license = "BSD-3-Clause";
      copyright = "2016 Oleg Grenrus";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/phadej/functor-classes-compat#readme";
      url = "";
      synopsis = "Data.Functor.Classes instances for core packages";
      description = "\"Data.Functor.Classes\" instances for core packages:\n\n* containers\n\n* vector\n\n* unordered-containers";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs."hashable" or (buildDepError "hashable"))
          ] ++ (if flags.base-transformers-1
          then if flags.base-transformers-2
            then [ (hsPkgs."base" or (buildDepError "base")) ]
            else [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."transformers" or (buildDepError "transformers"))
              ]
          else if flags.base-transformers-2
            then [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."transformers" or (buildDepError "transformers"))
              (hsPkgs."transformers-compat" or (buildDepError "transformers-compat"))
              ]
            else [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."transformers" or (buildDepError "transformers"))
              ])) ++ [
          (hsPkgs."containers" or (buildDepError "containers"))
          ]) ++ [
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          ]) ++ [ (hsPkgs."vector" or (buildDepError "vector")) ];
        };
      };
    }