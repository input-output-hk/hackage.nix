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
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "idiomatic"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Baldur Blöndal";
      author = "Baldur Blöndal";
      homepage = "https://github.com/Icelandjack/idiomatic";
      url = "";
      synopsis = "Deriving Applicative for sum types.. Idiomatically.";
      description = "'Idiomatically' is used with 'DerivingVia' to derive 'Applicative'\nfor types with multiple constructors.\n\nThe name comes from the original paper on 'Applicative's: <http://strictlypositive.org/Idiom.pdf Idioms: applicative programming with effects>.\n\nIt features an extensible domain-specific language of sums with\n`Applicative` instances. `Idiomatically` is then passed a type-level\nlist of applicative sums that specify how deriving should take\nplace.\n\n> {-# Language DataKinds          #-}\n> {-# Language DeriveGeneric      #-}\n> {-# Language DerivingStrategies #-}\n> {-# Language DerivingVia        #-}\n>\n> import Generic.Applicative\n>\n> data Zip a = No | a ::: Zip a\n>   deriving\n>   stock (Show, Generic1)\n>\n>   deriving (Functor, Applicative)\n>   via Idiomatically Zip '[RightBias Terminal]\n\nThis derives the standard behaviour of `ZipList` but this same\n\"RightBias Terminal\" behaviour describes the `Maybe` and\n`Validation` applicative as well.\n\n> pure @Zip a = a ::: a ::: a ::: ...\n>\n> liftA2 (+) No       No        = No\n> liftA2 (+) No       (⊥:::⊥)   = No\n> liftA2 (+) (⊥:::⊥)  No        = No\n> liftA2 (+) (2:::No) (10:::No) = 12:::No\n\n`Idiomatically` shares an intimate relationship with `Generically1`:\nit is defined in terms of `Generically1` and they are\ninterchangeable when there is an empty list of sums:\n\n> type Generically1 :: (k -> Type) -> (k -> Type)\n> type Generically1 f = Idiomatically f '[]\n\nBased on <http://ekmett.github.io/reader/2012/abstracting-with-applicatives/index.html Abstracting with Applicatives>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      exes = {
        "ZipList-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."idiomatic" or (errorHandler.buildDepError "idiomatic"))
          ];
          buildable = if flags.examples then true else false;
        };
      };
    };
  }