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
      specVersion = "1.6";
      identifier = { name = "fclabels"; version = "0.11.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sebastiaan Visser <haskell@fvisser.nl>";
      author = "Sebastiaan Visser, Erik Hesselink, Chris Eidhof, Sjoerd Visscher.";
      homepage = "";
      url = "";
      synopsis = "First class accessor labels implemented as lenses.";
      description = "First class labels that act as bidirectional record fields.\n\nThe labels are implemented as lenses and are fully composable\nand can be used to get, set and modify parts of a datatype in\na consistent way. The lens datatype, conveniently called\n`:->', is an instance of the `Category' type class: meaning it\nhas a proper identity and composition. The library has support\nfor automatically deriving labels from record selectors that\nstart with an underscore. Labels can be used in a purely\nfunctional setting or be applied to mutable state in some\nstate monad.\n\nTo illustrate this package, let's take the following two example\ndatatypes (somehow Haddock removes the curly braces):\n\n> data Person = Person {\n>     _name   :: String\n>   , _age    :: Int\n>   , _isMale :: Bool\n>   , _place  :: Place\n>   }\n\n> data Place = Place {\n>     _city\n>   , _country\n>   , _continent :: String\n>   }\n\nBoth are record datatypes with all record labels prefixed by\nan underscore.  This underscore is an indication for our\nTemplate Haskell code to derive lenses for these fields.\nDeriving lenses can be done with this simple one-liner:\n\n> \$(mkLabels [''Person, ''Place])\n\nThese lenses can be used to get, set and modify the value and\nare fully composable.\n\nNow let's look at this example. This 71 year old fellow, called Jan,\nis my neighbour and didn't mind using him as an example:\n\n> jan :: Person\n> jan = Person \"Jan\" 71 True (Place \"Utrecht\" \"The Netherlands\" \"Europe\")\n\nWhen we want to be sure Jan is really as old as he claims we\ncan use the @getL@ function to get the age out as an integer:\n\n> hisAge :: Int\n> hisAge = getL age jan\n\nConsider he now wants to move to Amsterdam: what better place\nto spend your old days. Using composition we can change the\ncity value deep inside the structure:\n\n> moveToAmsterdam :: Person -> Person\n> moveToAmsterdam = setL (city . place) \"Amsterdam\"\n\n> moveToAmsterdam jan ==\n>  Person \"Jan\" 71 True (Place \"Amsterdam\" \"The Netherlands\" \"Europe\")\n\nComposition is done using the dot operator which is part of\nthe @Control.Category@ module. Make sure to import this module\nand hide the default @(.)@, @id@ and @modL@ function from the\nPrelude.\n\nNow, because Jan is an old guy, moving to another city is not a\nvery easy task, this really takes a while. It will probably\ntake no less than two years before he will actually be\nsettled. To reflect this change it might be useful to have a\nfirst class view on the @Person@ data type that only reveals\nthe age and city.  This can be done by using a neat\n@Applicative@ functor instance:\n\n> ageAndCity :: Person :-> (Int, String)\n> ageAndCity = Lens \$ (,) <\$> fst `for` age <*> snd `for` (city . place)\n\nBecause the applicative type class on its own is not very\ncapable of expressing bidirectional relations, which we need\nfor our lenses, the actual instance is defined for an internal\nhelper structure called @Point@. Points are a bit more general\nthan lenses. As you can see above, the @Label@ constructor has\nto be used to convert a @Point@ back into a @Label@. The @for@\nfunction must be used to indicate which partial destructor to\nuse for which lens in the applicative composition.\n\nNow that we have an appropriate age+city view on the @Person@\ndata type (which is itself a lens again), we can use the\n@modL@ function to make Jan move to Amsterdam over exactly two\nyears:\n\n> moveToAmsterdamOverTwoYears :: Person -> Person\n> moveToAmsterdamOverTwoYears = modL ageAndCity (\\(a, b) -> (a+2, \"Amsterdam\"))\n\n> moveToAmsterdamOverTwoYears jan ==\n>  Person \"Jan\" 73 True (Place \"Amsterdam\" \"The Netherlands\" \"Europe\")\n\nThis package also contains a lens data type that encodes\nbidirectional functions. Just like lenses, lenses can be\ncomposed with other lenses using the @Control.Category@ type\nclass. Lenses can be used to change the type of a lens. The\n@Iso@ type class, which can be seen as a bidirectional\nfunctor, can be used to apply lenses to lenses. For example,\nwhen we want to treat the age of a person as a string we can\ndo the following:\n\n> ageAsString :: Person :-> String\n> ageAsString :: (show :<->: read) % age\n\nA final note: this library might look cryptic at first sight, but give it a\ntry, it is not that hard.\n\n\n> CHANGELOG\n>   0.9.1 -> 0.11.0\n>   - Monadic labels now build against mtl.\n>   - Separate module for core/non-core code.\n>   - Code cleanups, especially the TH code.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }