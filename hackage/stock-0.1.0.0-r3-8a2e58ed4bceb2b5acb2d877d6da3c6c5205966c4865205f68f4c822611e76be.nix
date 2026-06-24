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
      description = "A GHC type-checker plugin that derives class instances for\n<https://hackage.haskell.org/package/stock/docs/Stock.html#t:Stock Stock> \n@T@ and higher-kinded variants at /compile time/, straight from the\nstructure of /T/ without a @Generic@ representation or runtime cost.\n\nSupported classes:\n\n* @<https://hackage.haskell.org/package/stock/docs/Stock.html#t:Stock Stock>@: 'Eq', 'Ord', 'Show', 'Read', 'Semigroup', 'Monoid',\n  'Enum', 'Bounded', 'Ix', 'Generic'\n* @<https://hackage.haskell.org/package/stock/docs/Stock.html#t:Stock1 Stock1>@: 'Functor', 'Foldable', 'Traversable', 'Contravariant',\n  'Applicative', 'Eq1', 'Ord1', 'Show1', 'Read1', 'Generic1',\n  'TestEquality', 'TestCoercion'\n* @<https://hackage.haskell.org/package/stock/docs/Stock.html#t:Stock2 Stock2>@: 'Bifunctor', 'Bifoldable', 'Bitraversable', 'Eq2',\n  'Ord2', 'Show2', 'Read2', 'Category'\n\nEvery claim below is machine-checked with @inspection-testing@ (it\ncompares optimised Core, not behaviour):\n\n* For 'Eq', 'Ord', 'Enum', 'Functor', 'Bounded' and 'Foldable' the\n  emitted Core is /byte-identical/ to GHC's own stock deriving.\n* 'Traversable' and 'Bitraversable' (which GHC cannot stock-derive\n  at all) produce a 'traverse'/'bitraverse' /byte-identical/ to the\n  natural hand-written definition.\n* Every remaining class is proven to erase the\n  @<https://hackage.haskell.org/package/stock/docs/Stock.html#t:Stock Stock>@ \n  wrapper and its coercions /completely/, so the instance is exactly\n  as fast as a hand-written one and behaves identically to stock\n  deriving wherever GHC has it.\n\nIn short: where GHC derives the class, the result is the same Core\nGHC emits; where it does not, the result is the Core you would have\nwritten by hand.\n\n'Traversable'/'Bitraversable' are synthesised as genuine instances\nbut cannot be reached by a bare @deriving via@ (the coercion is\nblocked by the abstract applicative's nominal role; see \"Stock\").\n\nCompanion packages add more classes through @DeriveStock@ instances\n(see \"Stock.Derive\"), discovered automatically without an extra\n@-fplugin@ flag:\n\n* @<https://hackage.haskell.org/package/stock-deepseq stock-deepseq>@: @<https://hackage.haskell.org/package/deepseq/docs/Control-DeepSeq.html#t:NFData NFData>@, @<https://hackage.haskell.org/package/deepseq/docs/Control-DeepSeq.html#t:NFData1 NFData1>@, @<https://hackage.haskell.org/package/deepseq/docs/Control-DeepSeq.html#t:NFData2 NFData2>@\n* @<https://hackage.haskell.org/package/stock-hashable stock-hashable>@: @<https://hackage.haskell.org/package/hashable/docs/Data-Hashable.html#t:Hashable Hashable>@, @<https://hackage.haskell.org/package/hashable/docs/Data-Hashable-Lifted.html#t:Hashable1 Hashable1>@, @<https://hackage.haskell.org/package/hashable/docs/Data-Hashable-Lifted.html#t:Hashable2 Hashable2>@\n* @<https://hackage.haskell.org/package/stock-aeson stock-aeson>@: @<https://hackage.haskell.org/package/aeson/docs/Data-Aeson.html#t:ToJSON ToJSON>@, @<https://hackage.haskell.org/package/aeson/docs/Data-Aeson.html#t:ToJSON1 ToJSON1>@, @<https://hackage.haskell.org/package/aeson/docs/Data-Aeson.html#t:ToJSON2 ToJSON2>@; @<https://hackage.haskell.org/package/aeson/docs/Data-Aeson.html#t:FromJSON FromJSON>@, @<https://hackage.haskell.org/package/aeson/docs/Data-Aeson.html#t:FromJSON1 FromJSON1>@, @<https://hackage.haskell.org/package/aeson/docs/Data-Aeson.html#t:FromJSON2 FromJSON2>@\n* @<https://hackage.haskell.org/package/stock-quickcheck stock-quickcheck>@: @<https://hackage.haskell.org/package/QuickCheck/docs/Test-QuickCheck.html#t:Arbitrary Arbitrary>@, @<https://hackage.haskell.org/package/QuickCheck/docs/Test-QuickCheck.html#t:Arbitrary1 Arbitrary1>@, @<https://hackage.haskell.org/package/QuickCheck/docs/Test-QuickCheck.html#t:Arbitrary2 Arbitrary2>@; @<https://hackage.haskell.org/package/QuickCheck/docs/Test-QuickCheck.html#t:CoArbitrary CoArbitrary>@\n* @<https://hackage.haskell.org/package/stock-profunctors stock-profunctors>@: @<https://hackage.haskell.org/package/profunctors/docs/Data-Profunctor.html#t:Profunctor Profunctor>@\n\nOrdinary @DerivingVia@ modifiers compose with\n<https://hackage.haskell.org/package/stock/docs/Stock.html#t:Stock Stock>:\n@<https://hackage-content.haskell.org/package/base-4.22.0.0/docs/Data-Ord.html#t:Down Down (Stock T)>@ \nreverses ordering, enumeration and bounds;\n@<https://hackage-content.haskell.org/package/transformers-0.6.3.0/docs/Control-Applicative-Backwards.html#t:Backwards Backwards (Stock1 F)>@ \nreverses 'Applicative' effects;\n@<https://hackage-content.haskell.org/package/transformers-0.6.3.0/docs/Data-Functor-Reverse.html#t:Reverse Reverse (Stock1 F)>@ \nreverses 'Foldable'/'Traversable'.\n\n> {-# options_ghc -fplugin Stock #-}\n> {-# language DerivingVia #-}\n>\n> import Stock\n> import Data.Ord (Down(..))\n>\n> -- >>> sort [Bronze, Silver, Gold]\n> -- [Gold,Silver,Bronze]\n> data Place = Bronze | Silver | Gold\n>   deriving (Eq, Show) via Stock Place\n>   deriving (Ord, Bounded, Enum) via Down (Stock Place)\n\nPer-field modifiers (@Override@, \"Stock.Override\", re-exported by\n\"Stock\") customise individual fields by name, type, or position; @_@\nleaves a field unchanged. A modifier is any newtype with the relevant\ninstance.\n\nThis game example shows hit points and coins accumulate with\naddition, poisoning contaminates by disjunction (or), @items@, and\n@weapons@ union with addition to produce a multiset.\n\n> import Data.Map.Monoidal (MonoidalMap(..))\n>\n> type MultiSet key = MonoidalMap key (Sum Int)\n>\n> data Inventory = Inventory\n>   { hp       :: Int\n>   , coins    :: Int\n>   , poisoned :: Bool\n>   , items    :: Map Item Int\n>   , weapons  :: Map Weapon Int\n>   }\n>   deriving (Eq, Ord, Show, Read) via \n>     Stock Inventory\n>   deriving (Semigroup, Monoid) via\n>     Overriding Inventory\n>       '[ hp       via Sum\n>        , coins    via Sum\n>        , poisoned via Any\n>        , items    via MultiSet Item\n>        , weapons  via MultiSet Weapon\n>        ]\n\nSynthesis runs once per instance (not per use): @deriving Cls via Stock\nT@ produces a single shared @instance Cls T@ that every call reuses.";
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