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
      base-4-9 = true;
      template-haskell-2-11 = true;
      new-functor-classes = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "deriving-compat"; version = "0.3.3"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2015-2016 Ryan Scott";
      maintainer = "Ryan Scott <ryan.gl.scott@gmail.com>";
      author = "Ryan Scott";
      homepage = "https://github.com/haskell-compat/deriving-compat";
      url = "";
      synopsis = "Backports of GHC deriving extensions";
      description = "Provides Template Haskell functions that mimic deriving\nextensions that were introduced or modified in recent versions\nof GHC. Currently, the following typeclasses/extensions are covered:\n\n* Deriving @Bounded@\n\n* Deriving @Enum@\n\n* Deriving @Ix@\n\n* Deriving @Eq@, @Eq1@, and @Eq2@\n\n* Deriving @Ord@, @Ord1@, and @Ord2@\n\n* Deriving @Read@, @Read1@, and @Read2@\n\n* Deriving @Show@, @Show1@, and @Show2@\n\n* @DeriveFoldable@\n\n* @DeriveFunctor@\n\n* @DeriveTraversable@\n\nSee the \"Data.Deriving\" module for a full list of backported changes.\n\nNote that some recent GHC typeclasses/extensions are not covered by this package:\n\n* @DeriveDataTypeable@\n\n* @DeriveGeneric@, which was introducted in GHC 7.2 for deriving\n@Generic@ instances, and modified in GHC 7.6 to allow derivation\nof @Generic1@ instances. Use @Generics.Deriving.TH@ from\n@<http://hackage.haskell.org/package/generic-deriving generic-deriving>@\nto derive @Generic(1)@ using Template Haskell.\n\n* @DeriveLift@, which was introduced in GHC 8.0 for deriving\n@Lift@ instances. Use @Language.Haskell.TH.Lift@ from\n@<http://hackage.haskell.org/package/th-lift th-lift>@\nto derive @Lift@ using Template Haskell.\n\n* The @Bifunctor@ typeclass, which was introduced in GHC 7.10,\nas well as the @Bifoldable@ and @Bitraversable@ typeclasses, which\nwere introduced in GHC 8.2. Use @Data.Bifunctor.TH@ from\n@<http://hackage.haskell.org/package/bifunctors bifunctors>@\nto derive these typeclasses using Template Haskell.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          ] ++ [
          (hsPkgs."base" or (buildDepError "base"))
          ]) ++ (if flags.template-haskell-2-11
          then [
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."ghc-boot-th" or (buildDepError "ghc-boot-th"))
            ]
          else [
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            ])) ++ (if flags.new-functor-classes
          then [
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."transformers-compat" or (buildDepError "transformers-compat"))
            ]
          else [ (hsPkgs."transformers" or (buildDepError "transformers")) ]);
        };
      tests = {
        "spec" = {
          depends = ([
            (hsPkgs."base-compat" or (buildDepError "base-compat"))
            (hsPkgs."base-orphans" or (buildDepError "base-orphans"))
            (hsPkgs."deriving-compat" or (buildDepError "deriving-compat"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            ] ++ [
            (hsPkgs."base" or (buildDepError "base"))
            ]) ++ (if flags.new-functor-classes
            then [
              (hsPkgs."transformers" or (buildDepError "transformers"))
              (hsPkgs."transformers-compat" or (buildDepError "transformers-compat"))
              ]
            else [ (hsPkgs."transformers" or (buildDepError "transformers")) ]);
          };
        };
      };
    }