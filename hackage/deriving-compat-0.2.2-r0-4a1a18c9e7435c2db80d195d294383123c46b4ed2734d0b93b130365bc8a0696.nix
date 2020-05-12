{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {
      base-4-9 = true;
      template-haskell-2-11 = true;
      new-functor-classes = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "deriving-compat"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2015-2016 Ryan Scott";
      maintainer = "Ryan Scott <ryan.gl.scott@gmail.com>";
      author = "Ryan Scott";
      homepage = "https://github.com/haskell-compat/deriving-compat";
      url = "";
      synopsis = "Backports of GHC deriving extensions";
      description = "Provides Template Haskell functions that mimic deriving\nextensions that were introduced or modified in recent versions\nof GHC. Currently, the following extensions are covered:\n\n* @DeriveFoldable@\n\n* @DeriveFunctor@\n\n* @DeriveTraversable@\n\nThe following changes have been backported:\n\n* In GHC 8.0, @DeriveFoldable@ was changed to allow folding\nover data types with existential constraints.\n\n* In GHC 8.0, @DeriveFoldable@ and @DeriveTraversable@ were\nchanged so as not to generate superfluous @mempty@ or @pure@\nexpressions in generated code. As a result, this allows\nderiving @Traversable@ instances for datatypes with unlifted\nargument types.\n\n* In GHC 8.0, deriving @Show@ was changed so that constructor fields\nwith unlifted types are no longer shown with parentheses, and\nthe output of showing an unlifted type is suffixed with the same\nnumber of hash signs as the corresponding primitive literals.\n\nNote that some recent GHC extensions are not covered by this package:\n\n* @DeriveGeneric@, which was introducted in GHC 7.2 for deriving\n@Generic@ instances, and modified in GHC 7.6 to allow derivation\nof @Generic1@ instances. Use @Generics.Deriving.TH@ from\n@<http://hackage.haskell.org/package/generic-deriving generic-deriving>@\nto derive @Generic(1)@ using Template Haskell.\n\n* @DeriveLift@, which was introduced in GHC 8.0 for deriving\n@Lift@ instances. Use @Language.Haskell.TH.Lift@ from\n@<http://hackage.haskell.org/package/th-lift th-lift>@\nto derive @Lift@ using Template Haskell.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          ] ++ [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ]) ++ (if flags.template-haskell-2-11
          then [
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."ghc-boot-th" or (errorHandler.buildDepError "ghc-boot-th"))
            ]
          else [
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            ])) ++ (if flags.new-functor-classes
          then [
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."transformers-compat" or (errorHandler.buildDepError "transformers-compat"))
            ]
          else [
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ]);
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = ([
            (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
            (hsPkgs."base-orphans" or (errorHandler.buildDepError "base-orphans"))
            (hsPkgs."deriving-compat" or (errorHandler.buildDepError "deriving-compat"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ] ++ [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ]) ++ (if flags.new-functor-classes
            then [
              (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
              (hsPkgs."transformers-compat" or (errorHandler.buildDepError "transformers-compat"))
              ]
            else [
              (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
              ]);
          buildable = true;
          };
        };
      };
    }