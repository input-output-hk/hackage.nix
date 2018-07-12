{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      base-4-9 = true;
      template-haskell-2-11 = true;
      new-functor-classes = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "deriving-compat";
          version = "0.3.5";
        };
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
        "deriving-compat" = {
          depends  = (([
            hsPkgs.containers
            hsPkgs.ghc-prim
          ] ++ [
            hsPkgs.base
          ]) ++ (if _flags.template-haskell-2-11
            then [
              hsPkgs.template-haskell
              hsPkgs.ghc-boot-th
            ]
            else [
              hsPkgs.template-haskell
            ])) ++ (if _flags.new-functor-classes
            then [
              hsPkgs.transformers
              hsPkgs.transformers-compat
            ]
            else [ hsPkgs.transformers ]);
        };
        tests = {
          "spec" = {
            depends  = ([
              hsPkgs.base-compat
              hsPkgs.base-orphans
              hsPkgs.deriving-compat
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.tagged
              hsPkgs.template-haskell
            ] ++ [
              hsPkgs.base
            ]) ++ (if _flags.new-functor-classes
              then [
                hsPkgs.transformers
                hsPkgs.transformers-compat
              ]
              else [ hsPkgs.transformers ]);
          };
        };
      };
    }