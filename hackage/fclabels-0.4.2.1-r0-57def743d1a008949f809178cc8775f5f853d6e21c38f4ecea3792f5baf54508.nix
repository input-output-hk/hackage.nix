{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "fclabels";
        version = "0.4.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sebastiaan Visser <sfvisser@cs.uu.nl>";
      author = "Sebastiaan Visser, Erik Hesselink, Chris Eidhof, Sjoerd Visscher.";
      homepage = "";
      url = "";
      synopsis = "First class accessor labels.";
      description = "First class labels that act as bidirectional record fields.\nThe labels are fully composable and can be used to get, set\nand modify parts of a datatype in a consistent way. The label\ndatatype, conveniently called `:->', is an instance of the\n`Category' type class meaning it has a proper identity and\ncomposition. The library has support for automatically\nderiving labels from record selectors that start with an\nunderscore. Labels can be used in a purely functional setting\nor be applied to mutable state in some state monad.\n\nTo illustrate this package take the following two example\ndatatypes (somehow Haddock removes the braces):\n\n> data Person = Person {\n>     _name   :: String\n>   , _age    :: Int\n>   , _isMale :: Bool\n>   , _place  :: Place\n>   }\n\n> data Place = Place {\n>     _city\n>   , _country\n>   , _continent :: String\n>   }\n\nBoth are record datatypes with all record labels prefixed with\nan underscore.  This underscore is an indication for our\nTemplate Haskell code to derive labels for these fields.\nDeriving labels can be done with this simple one-liner:\n\n> \$(mkLabels [''Person, ''Place])\n\nLabel function will be generated, label type signatures will\nnot. This is actually not that bad, by writing the signatures\ndown yourself you will be able to give them documentation,\nsomething that would be hard otherwise. So, lets give\nfunctions a signature by hand:\n\n> name      :: Person :-> String\n> age       :: Person :-> Int\n> isMale    :: Person :-> Bool\n> place     :: Person :-> Place\n> city      :: Place :-> String\n> country   :: Place :-> String\n> continent :: Place :-> String\n\nThese type signatures look very similar to the function types\nfor normal record labels, except that the additional colon\nindicates a true first class label.  These labels can be used\nto get, set and modify the value and are fully composable.\n\nNow let look at this example. This 71 old fellow, called Jan,\nis my neighbour and didn't mind using him as an example:\n\n> jan :: Person\n> jan = Person \"Jan\" 71 True (Place \"Utrecht\" \"The Netherlands\" \"Europe\")\n\nWhen we want to be sure Jan is really as old as he claims we\ncan use the @get@ function for labels to get the age out as an\ninteger:\n\n> hisAge :: Int\n> hisAge = get age jan\n\nConsider he now wants to move to Amsterdam, what better place\nto spend your old days. Using composition when can change the\ncity value deep inside the structure:\n\n> moveToAmsterdam :: Person -> Person\n> moveToAmsterdam = set (city . place) \"Amsterdam\"\n\n> moveToAmsterdam jan ==\n>  Person \"Jan\" 71 True (Place \"Amsterdam\" \"The Netherlands\" \"Europe\")\n\nComposition is done using the dot operator which is part of\nthe @Control.Category@ module. Make sure to import this module\nand hide the default @(.)@, @id@ and @mod@ function from the\nPrelude.\n\nNow, because Jan is an old guy moving to another city is not a\nvery easy task, this really takes a while. So it will probably\ntake no less than two years before he will actually be\nsettled. To reflect this change it might be useful to have a\nfirst class view on the @Person@ data type that only reveals\nthe age and city.  This can be done by using a neat\n@Applicative@ functor instance:\n\n> ageAndCity :: Person :-> (Int, String)\n> ageAndCity = Label \$ (,) <\$> fst `for` age <*> snd `for` (city . place)\n\nBecause the applicative type class on its own is not very\ncapable of expressing bidirectional relations, which we need\nfor our labels, the actual instance is defined for an internal\nhelper structure called @Point@. Points are a bit more general\nthan labels. As you can see above the @Label@ constructor has\nto be used to convert a @Point@ back into a @Label@. The @for@\nfunction must be used to indicate which partial destructor to\nuse for which label in the applicative composition.\n\nNow that we have an appropriate age+city view on the @Person@\ndata type (which is itself a label again), we can use the\n@mod@ function to make Jan move to Amsterdam over exactly two\nyears:\n\n> moveToAmsterdamOverTwoYears :: Person -> Person\n> moveToAmsterdamOverTwoYears = mod ageAndCity (\\(a, b) -> (a+2, \"Amsterdam\"))\n\n> moveToAmsterdamOverTwoYears jan ==\n>  Person \"Jan\" 73 True (Place \"Amsterdam\" \"The Netherlands\" \"Europe\")\n\nThis package also contains a lens data type that encodes\nbidirectional functions. Just like labels lenses can be\ncomposed to other lenses using the @Control.Category@ type\nclass. Lenses can be used to change the type of a label. The\n@Iso@ type class, which can be seen as a bidirectional\nfunctor, can be used to apply lenses to labels. For example,\nwhen we want to threat the age of a person as a string we can\ndo the following:\n\n> ageAsString :: Person :-> String\n> ageAsString :: (show <-> read) `iso` age\n\nThis library might look cryptic at first sight, but give it a\ntry it is not that hard.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.monads-fd)
        ];
      };
    };
  }