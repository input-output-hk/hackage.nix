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
      description = "A GHC type-checker plugin that derives class instances for @Stock T@\nand higher-kinded variants at /compile time/, straight from the\nstructure of /T/ without a @Generic@ representation or runtime cost.\n.\nSupported classes:\n.\n* @Stock@:  Eq, Ord, Show, Read, Semigroup, Monoid, Enum, Bounded, Ix, Generic\n* @Stock1@: Functor, Foldable, Traversable, Contravariant, Applicative, Eq1, Ord1, Show1, Read1, Generic1, TestEquality, TestCoercion\n* @Stock2@: Bifunctor, Bifoldable, Bitraversable, Eq2, Ord2, Show2, Read2, Category\n.\nEvery claim below is machine-checked with @inspection-testing@ (it\ncompares optimised Core, not behaviour):\n.\n* For @Eq@, @Ord@, @Enum@, @Functor@, @Bounded@ and @Foldable@ the\n  emitted Core is /byte-identical/ to GHC's own stock deriving.\n* @Traversable@ and @Bitraversable@ — which GHC cannot stock-derive\n  at all — produce a @traverse@\\/@bitraverse@ /byte-identical/ to the\n  natural hand-written definition.\n* Every remaining class is proven to erase the @Stock@ wrapper and\n  its coercions /completely/, so the instance is exactly as fast as a\n  hand-written one and behaves identically to stock deriving wherever\n  GHC has it.\n.\nIn short: where GHC derives the class, the result is the same Core\nGHC emits; where it does not, the result is the Core you would have\nwritten by hand.\n.\n@Traversable@\\/@Bitraversable@ are synthesised as genuine instances\nbut cannot be reached by a bare @deriving via@ (the coercion is\nblocked by the abstract applicative's nominal role; see @\"Stock\"@).\n.\nCompanion packages add more classes through @DeriveStock@ instances\n(see @\"Stock.Derive\"@), discovered automatically without an extra\n@-fplugin@ flag :\n.\n* @stock-deepseq@:     NFData, NFData1, NFData2\n* @stock-hashable@:    Hashable, Hashable1, Hashable2\n* @stock-aeson@:       ToJSON, ToJSON1, ToJSON2; FromJSON, FromJSON1, FromJSON2\n* @stock-quickcheck@:  Arbitrary, Arbitrary1, Arbitrary2; CoArbitrary\n* @stock-profunctors@: Profunctor\n.\nOrdinary @DerivingVia@ modifiers compose with @Stock@:\n@Down (Stock T)@ reverses ordering, enumeration and bounds;\n@Backwards (Stock1 F)@ reverses @Applicative@ effects; @Reverse\n(Stock1 F)@ reverses @Foldable@\\/@Traversable@.\n.\n> {-# options_ghc -fplugin Stock #-}\n> {-# language DerivingVia #-}\n> \n> import Stock\n> import Data.Ord (Down(..))\n>\n> -- >>> sort [Bronze, Silver, Gold]\n> -- [Gold,Silver,Bronze]\n> data Place = Bronze | Silver | Gold\n>   deriving (Eq, Show)           via Stock Place\n>   deriving (Ord, Bounded, Enum) via Down (Stock Place)\n.\nPer-field modifiers (@Override@, @\"Stock.Override\"@, re-exported by\n@\"Stock\"@) customise individual fields by name, type, or position; @_@\nleaves a field unchanged. A modifier is any newtype with the relevant\ninstance.\n. \nHit points and coins accumulate with addition, poisoning\ncontaminates by disjunction (or), @items@, and @weapons@ union with\naddition to product a multiset.\n.\n> import Data.Map.Monoidal (MonoidalMap(..))\n> ..\n> type MultiSet key = MonoidalMap key (Sum Int)\n> \n> data Inventory = Inventory\n>   { hp       :: Int\n>   , coins    :: Int\n>   , poisoned :: Bool\n>   , items    :: Map Item   Int    -- these unfortunately default\n>   , weapons  :: Map Weapon Int    -- to left-biased union\n>   }\n>   deriving (Eq, Ord, Show, Read) via\n>     Stock Inventory\n>   deriving (Semigroup, Monoid) via \n>     Overriding Inventory\n>    '[ hp       via Sum \n>     , coins    via Sum \n>     , poisoned via Any\n>     , items    via MultiSet Item\n>     , weapons  via MultiSet Weapon\n>     ]\n.\nSynthesis runs once per instance (not per use): @deriving Cls via Stock\nT@ produces a single shared @instance Cls T@ that every call reuses.";
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