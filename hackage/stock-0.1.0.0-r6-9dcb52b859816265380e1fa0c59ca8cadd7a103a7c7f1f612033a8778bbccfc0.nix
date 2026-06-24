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
    flags = {};
    package = {
      specVersion = "3.0";
      identifier = { name = "stock"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "baldur.blondal@iohk.io";
      author = "Baldur Blöndal";
      homepage = "";
      url = "";
      synopsis = "Stock-style deriving via coercion, with no Generic";
      description = "A GHC type-checker plugin that derives class instances for\n<https://hackage.haskell.org/package/stock/docs/Stock.html#t:Stock Stock> \n@T@ and higher-kinded variants at /compile time/, straight from the\nstructure of /T/ without a @Generic@ representation or runtime cost.\n\nSupported classes:\n\n* __@<https://hackage.haskell.org/package/stock/docs/Stock.html#t:Stock Stock>@__: @<https://hackage.haskell.org/package/base/docs/Data-Eq.html#t:Eq Eq>@, @<https://hackage.haskell.org/package/base/docs/Data-Ord.html#t:Ord Ord>@, @<https://hackage.haskell.org/package/base/docs/Text-Show.html#t:Show Show>@, @<https://hackage.haskell.org/package/base/docs/Text-Read.html#t:Read Read>@, @<https://hackage.haskell.org/package/base/docs/Data-Semigroup.html#t:Semigroup Semigroup>@, @<https://hackage.haskell.org/package/base/docs/Data-Monoid.html#t:Monoid Monoid>@,\n  @<https://hackage.haskell.org/package/base/docs/Prelude.html#t:Enum Enum>@, @<https://hackage.haskell.org/package/base/docs/Prelude.html#t:Bounded Bounded>@, @<https://hackage.haskell.org/package/base/docs/Data-Ix.html#t:Ix Ix>@, @<https://hackage.haskell.org/package/base/docs/GHC-Generics.html#t:Generic Generic>@\n* __@<https://hackage.haskell.org/package/stock/docs/Stock.html#t:Stock1 Stock1>@__: @<https://hackage.haskell.org/package/base/docs/Data-Functor.html#t:Functor Functor>@, @<https://hackage.haskell.org/package/base/docs/Data-Foldable.html#t:Foldable Foldable>@, @<https://hackage.haskell.org/package/base/docs/Data-Traversable.html#t:Traversable Traversable>@, @<https://hackage.haskell.org/package/base/docs/Data-Functor-Contravariant.html#t:Contravariant Contravariant>@,\n  @<https://hackage.haskell.org/package/base/docs/Control-Applicative.html#t:Applicative Applicative>@, @<https://hackage.haskell.org/package/base/docs/Data-Functor-Classes.html#t:Eq1 Eq1>@, @<https://hackage.haskell.org/package/base/docs/Data-Functor-Classes.html#t:Ord1 Ord1>@, @<https://hackage.haskell.org/package/base/docs/Data-Functor-Classes.html#t:Show1 Show1>@, @<https://hackage.haskell.org/package/base/docs/Data-Functor-Classes.html#t:Read1 Read1>@, @<https://hackage.haskell.org/package/base/docs/GHC-Generics.html#t:Generic1 Generic1>@,\n  @<https://hackage.haskell.org/package/base/docs/Data-Type-Equality.html#t:TestEquality TestEquality>@, @<https://hackage.haskell.org/package/base/docs/Data-Type-Coercion.html#t:TestCoercion TestCoercion>@\n* __@<https://hackage.haskell.org/package/stock/docs/Stock.html#t:Stock2 Stock2>@__: @<https://hackage.haskell.org/package/base/docs/Data-Bifunctor.html#t:Bifunctor Bifunctor>@, @<https://hackage.haskell.org/package/base/docs/Data-Bifoldable.html#t:Bifoldable Bifoldable>@, @<https://hackage.haskell.org/package/base/docs/Data-Bitraversable.html#t:Bitraversable Bitraversable>@, @<https://hackage.haskell.org/package/base/docs/Data-Functor-Classes.html#t:Eq2 Eq2>@,\n  @<https://hackage.haskell.org/package/base/docs/Data-Functor-Classes.html#t:Ord2 Ord2>@, @<https://hackage.haskell.org/package/base/docs/Data-Functor-Classes.html#t:Show2 Show2>@, @<https://hackage.haskell.org/package/base/docs/Data-Functor-Classes.html#t:Read2 Read2>@, @<https://hackage.haskell.org/package/base/docs/Control-Category.html#t:Category Category>@\n\nEvery claim below is machine-checked with @inspection-testing@ (it\ncompares optimised Core, not behaviour):\n\n* For @<https://hackage.haskell.org/package/base/docs/Data-Eq.html#t:Eq Eq>@, @<https://hackage.haskell.org/package/base/docs/Data-Ord.html#t:Ord Ord>@, @<https://hackage.haskell.org/package/base/docs/Prelude.html#t:Enum Enum>@, @<https://hackage.haskell.org/package/base/docs/Data-Functor.html#t:Functor Functor>@, @<https://hackage.haskell.org/package/base/docs/Prelude.html#t:Bounded Bounded>@ and @<https://hackage.haskell.org/package/base/docs/Data-Foldable.html#t:Foldable Foldable>@ the\n  emitted Core is /byte-identical/ to GHC's own stock deriving.\n* @<https://hackage.haskell.org/package/base/docs/Data-Traversable.html#t:Traversable Traversable>@ and @<https://hackage.haskell.org/package/base/docs/Data-Bitraversable.html#t:Bitraversable Bitraversable>@ (which GHC cannot stock-derive at all) produce a @<https://hackage.haskell.org/package/base/docs/Data-Traversable.html#v:traverse traverse>@, @<https://hackage.haskell.org/package/base/docs/Data-Bitraversable.html#v:bitraverse bitraverse>@ /byte-identical/ to the natural hand-written definition.\n* Every remaining class is proven to erase the\n  @<https://hackage.haskell.org/package/stock/docs/Stock.html#t:Stock Stock>@ \n  wrapper and its coercions /completely/, so the instance is exactly\n  as fast as a hand-written one and behaves identically to stock\n  deriving wherever GHC has it.\n\nIn short: where GHC derives the class, the result is the same Core\nGHC emits; where it does not, the result is the Core you would have\nwritten by hand.\n\n@<https://hackage.haskell.org/package/base/docs/Data-Traversable.html#t:Traversable Traversable>@, @<https://hackage.haskell.org/package/base/docs/Data-Bitraversable.html#t:Bitraversable Bitraversable>@ are synthesised as genuine instances\nbut cannot be reached by a bare @deriving via@ (the coercion is\nblocked by the abstract applicative's nominal role; see \"Stock\").\n\nCompanion packages add more classes through @DeriveStock@ instances\n(see \"Stock.Derive\"), discovered automatically without an extra\n@-fplugin@ flag:\n\n* __@<https://hackage.haskell.org/package/stock-deepseq stock-deepseq>@__: @<https://hackage.haskell.org/package/deepseq/docs/Control-DeepSeq.html#t:NFData NFData>@, @<https://hackage.haskell.org/package/deepseq/docs/Control-DeepSeq.html#t:NFData1 NFData1>@, @<https://hackage.haskell.org/package/deepseq/docs/Control-DeepSeq.html#t:NFData2 NFData2>@\n* __@<https://hackage.haskell.org/package/stock-hashable stock-hashable>@__: @<https://hackage.haskell.org/package/hashable/docs/Data-Hashable.html#t:Hashable Hashable>@, @<https://hackage.haskell.org/package/hashable/docs/Data-Hashable-Lifted.html#t:Hashable1 Hashable1>@, @<https://hackage.haskell.org/package/hashable/docs/Data-Hashable-Lifted.html#t:Hashable2 Hashable2>@\n* __@<https://hackage.haskell.org/package/stock-aeson stock-aeson>@__: @<https://hackage.haskell.org/package/aeson/docs/Data-Aeson.html#t:ToJSON ToJSON>@, @<https://hackage.haskell.org/package/aeson/docs/Data-Aeson.html#t:ToJSON1 ToJSON1>@, @<https://hackage.haskell.org/package/aeson/docs/Data-Aeson.html#t:ToJSON2 ToJSON2>@; @<https://hackage.haskell.org/package/aeson/docs/Data-Aeson.html#t:FromJSON FromJSON>@, @<https://hackage.haskell.org/package/aeson/docs/Data-Aeson.html#t:FromJSON1 FromJSON1>@, @<https://hackage.haskell.org/package/aeson/docs/Data-Aeson.html#t:FromJSON2 FromJSON2>@\n* __@<https://hackage.haskell.org/package/stock-quickcheck stock-quickcheck>@__: @<https://hackage.haskell.org/package/QuickCheck/docs/Test-QuickCheck.html#t:Arbitrary Arbitrary>@, @<https://hackage.haskell.org/package/QuickCheck/docs/Test-QuickCheck.html#t:Arbitrary1 Arbitrary1>@, @<https://hackage.haskell.org/package/QuickCheck/docs/Test-QuickCheck.html#t:Arbitrary2 Arbitrary2>@; @<https://hackage.haskell.org/package/QuickCheck/docs/Test-QuickCheck.html#t:CoArbitrary CoArbitrary>@\n* __@<https://hackage.haskell.org/package/stock-profunctors stock-profunctors>@__: @<https://hackage.haskell.org/package/profunctors/docs/Data-Profunctor.html#t:Profunctor Profunctor>@\n\nOrdinary @DerivingVia@ modifiers compose with\n<https://hackage.haskell.org/package/stock/docs/Stock.html#t:Stock Stock>:\n\n* @<https://hackage-content.haskell.org/package/base-4.22.0.0/docs/Data-Ord.html#t:Down Down (Stock T)>@ reverses ordering, enumeration and bounds\n* @<https://hackage-content.haskell.org/package/transformers-0.6.3.0/docs/Control-Applicative-Backwards.html#t:Backwards Backwards (Stock1 F)>@ reverses @<https://hackage.haskell.org/package/base/docs/Control-Applicative.html#t:Applicative Applicative>@ effects\n* @<https://hackage-content.haskell.org/package/transformers-0.6.3.0/docs/Data-Functor-Reverse.html#t:Reverse Reverse (Stock1 F)>@ \nreverses @<https://hackage.haskell.org/package/base/docs/Data-Foldable.html#t:Foldable Foldable>@ / @<https://hackage.haskell.org/package/base/docs/Data-Traversable.html#t:Traversable Traversable>@\n\n> {-# options_ghc -fplugin Stock #-}\n> {-# language DerivingVia #-}\n>\n> import Stock\n> import Data.Ord (Down(..))\n>\n> -- >>> sort [Bronze, Silver, Gold]\n> -- [Gold,Silver,Bronze]\n> data Place = Bronze | Silver | Gold\n>   deriving (Eq, Show) via Stock Place\n>   deriving (Ord, Bounded, Enum) via Down (Stock Place)\n\nPer-field modifiers (@Override@, \"Stock.Override\", re-exported by\n\"Stock\") customise individual fields by name, type, or position; @_@\nleaves a field unchanged. A modifier is any newtype with the relevant\ninstance.\n\nThis game example shows hit points and coins accumulate with\naddition, poisoning contaminates by disjunction (or), @items@, and\n@weapons@ union with addition to produce a multiset.\n\n> import Data.Map.Monoidal (MonoidalMap(..))\n>\n> type MultiSet key = MonoidalMap key (Sum Int)\n>\n> data Inventory = Inventory\n>   { hp       :: Int\n>   , coins    :: Int\n>   , poisoned :: Bool\n>   , items    :: Map Item Int\n>   , weapons  :: Map Weapon Int\n>   }\n>   deriving (Eq, Ord, Show, Read) via \n>     Stock Inventory\n>   deriving (Semigroup, Monoid) via\n>     Overriding Inventory\n>       '[ hp       via Sum\n>        , coins    via Sum\n>        , poisoned via Any\n>        , items    via MultiSet Item\n>        , weapons  via MultiSet Weapon\n>        ]\n\nSynthesis runs once per instance (not per use): @deriving Cls via Stock\nT@ produces a single shared @instance Cls T@ that every call reuses.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
        ];
        buildable = true;
      };
      tests = {
        "examples" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."stock" or (errorHandler.buildDepError "stock"))
          ];
          buildable = true;
        };
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."stock" or (errorHandler.buildDepError "stock"))
          ];
          buildable = true;
        };
        "inspection" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."stock" or (errorHandler.buildDepError "stock"))
            (hsPkgs."inspection-testing" or (errorHandler.buildDepError "inspection-testing"))
          ];
          buildable = if compiler.isGhc && compiler.version.ge "9.14"
            then false
            else true;
        };
      };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."stock" or (errorHandler.buildDepError "stock"))
          ];
          buildable = true;
        };
        "configs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."stock" or (errorHandler.buildDepError "stock"))
          ];
          buildable = true;
        };
      };
    };
  }