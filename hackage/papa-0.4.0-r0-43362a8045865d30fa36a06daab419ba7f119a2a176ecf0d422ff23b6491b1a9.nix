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
    flags = { dev = false; };
    package = {
      specVersion = "2.4";
      identifier = { name = "papa"; version = "0.4.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2016-2017 Commonwealth Scientific and Industrial Research Organisation (CSIRO) ABN 41 687 119 230\nCopyright (c) 2017-2026 Tony Morris";
      maintainer = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ> <dibblego>";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ> <dibblego>";
      homepage = "https://gitlab.com/system-f/code/papa";
      url = "";
      synopsis = "Type class-driven prelude with lens, comonads, and safe alternatives";
      description = "<<https://logo.systemf.com.au/systemf-450x450.png>>\n\nPapa is a curated Haskell prelude that re-exports only total, safe functions and integrates\nseamlessly with the modern Haskell ecosystem. It eliminates partial functions while providing\ncomprehensive type class coverage across base, lens, bifunctors, semigroupoids, comonads,\nprofunctors, and more.\n\n= Core Design Principles\n\n* __No Partial Functions__ — All re-exported functions are total and safe\n* __Type Class-Driven__ — Maximizes use of standard type classes for polymorphic code\n* __Optics Integration__ — Full lens support with indexed operations and plated recursion\n* __Modern Ecosystem__ — Integrates adjunctions, comonads, profunctors, selective functors, and more\n\n= What's Included\n\nPapa provides a comprehensive set of type classes and operations:\n\n* __Base functionality__ — Safe alternatives to Prelude with Eq1/Eq2, Ord1/Ord2, Show1/Show2\n* __Functor hierarchy__ — Functor, Applicative, Monad, Alternative, MonadPlus, with Apply/Bind\n* __Foldable/Traversable__ — Including Foldable1/Traversable1 for non-empty structures\n* __Lens integration__ — Full optics support with At, Ixed, Plated, IndexedPlated, Field1-9\n* __Bifunctors__ — Bifunctor, Bifoldable, Bitraversable with indexed variants\n* __Comonads__ — Comonad, ComonadApply, Env, Store, Traced comonads\n* __Profunctors__ — Strong, Choice, Closed profunctors (import qualified)\n* __Containers__ — Map, Set, IntMap, IntSet, Seq, Tree (import qualified)\n* __Free structures__ — Free monads and Cofree comonads\n* __Transformers__ — MonadTrans, MonadIO, mtl classes (MonadReader, State, Writer, etc.)\n* __Specialized functors__ — Contravariant, Distributive, Selective, Witherable\n* __Generic programming__ — Generic, Generic1, Data, Typeable\n* __Performance__ — NFData for strict evaluation, all utility functions marked INLINE\n\n= Forbidden Functions\n\nPapa explicitly does NOT export these partial functions:\n\n* @head@, @tail@, @init@, @last@ — Use optics or pattern matching\n* @(!!)@ — Use safe @(^? ix n)@ from lens (Papa provides a safe version)\n* @maximum@, @minimum@ — Use @maximum1@/@minimum1@ for non-empty structures\n* @foldl1@, @foldr1@ — Use Foldable1 versions\n* @fromJust@ — Use @fromMaybe@ or pattern matching\n* @read@ — Use @readMaybe@ or parser libraries\n* @error@, @undefined@ — Use typed errors with Either\n* All @unsafe*@ functions\n\n= Usage\n\n> {-# LANGUAGE NoImplicitPrelude #-}\n> import Papa\n>\n> -- Use safe, total functions\n> safeHead :: [a] -> Maybe a\n> safeHead = (^? ix 0)\n>\n> -- Leverage type classes\n> genericLength :: (Foldable f, Num n) => f a -> n\n> genericLength = foldl' (\\n _ -> n + 1) 0\n>\n> -- Work with lenses\n> data Person = Person { _name :: String, _age :: Int }\n> name :: Lens' Person String\n\nSome modules require qualified import to avoid name conflicts:\n\n> import qualified Papa.Containers.Data.Map as Map\n> import qualified Papa.Profunctors.Data.Profunctor as Profunctor\n\n= Future Plans\n\n__Note:__ Future versions may split this package into separate dependencies to reduce\ncompilation times and allow finer-grained control over transitive dependencies. The\ncurrent monolithic structure prioritizes ease of use and comprehensive type class\ncoverage, but may be reorganized as:\n\n* @papa-base@ — Core prelude with base, bifunctors, semigroupoids\n* @papa-lens@ — Lens integration and optics\n* @papa-comonad@ — Comonad hierarchy\n* @papa-transformers@ — MTL and transformer classes\n* @papa-ecosystem@ — Profunctors, selective, witherable, etc.\n\nThis reorganization would allow users to depend only on the pieces they need while\nmaintaining API compatibility through the top-level @papa@ package as a convenience\nre-export.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."adjunctions" or (errorHandler.buildDepError "adjunctions"))
          (hsPkgs."associative" or (errorHandler.buildDepError "associative"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."distributive" or (errorHandler.buildDepError "distributive"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."id" or (errorHandler.buildDepError "id"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."lens-indexed-plated" or (errorHandler.buildDepError "lens-indexed-plated"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."one" or (errorHandler.buildDepError "one"))
          (hsPkgs."polytree" or (errorHandler.buildDepError "polytree"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."selective" or (errorHandler.buildDepError "selective"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."witherable" or (errorHandler.buildDepError "witherable"))
        ];
        buildable = true;
      };
      tests = {
        "papa-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."papa" or (errorHandler.buildDepError "papa"))
          ];
          buildable = true;
        };
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.doctest.components.exes.doctest or (pkgs.pkgsBuildBuild.doctest or (errorHandler.buildToolDepError "doctest:doctest")))
          ];
          buildable = true;
        };
      };
    };
  }