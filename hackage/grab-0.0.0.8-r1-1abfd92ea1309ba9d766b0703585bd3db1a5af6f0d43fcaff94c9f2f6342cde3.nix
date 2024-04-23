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
      identifier = { name = "grab"; version = "0.0.0.8"; };
      license = "MIT";
      copyright = "2021 Mission Valley Software LLC";
      maintainer = "Chris Martin, Julie Moronuki";
      author = "Chris Martin";
      homepage = "https://github.com/typeclasses/grab";
      url = "";
      synopsis = "Applicative non-linear consumption";
      description = "== The Grab type\n\nA grab consumes some portion (none, part, or all) of\nits input @bag@, and returns a @residue@ consisting of\nthe unconsumed input, some monoidal @log@ (e.g. a list\nof error messages), and some @desideratum@ (the object\nof desire) produced from the consumed input, or\n@Nothing@ if the grab failed.\n\n> newtype Grab bag residue log desideratum =\n>   Grab (\n>     bag -> (residue, log, Maybe desideratum)\n>   )\n\nGrabs are useful as parsers for inputs such as JSON\nobjects or lists of form parameters, where the input data\nis not necessarily given linearly in the same order in\nwhich we want to consume it.\n\n== Applicative composition\n\nA @Simple@ grab (where the @bag@ and @residue@ are the\nsame type) has an @Applicative@ instance.\n\n> instance (bag ~ residue, Monoid log) =>\n>     Applicative (Grab bag residue log)\n\nFor example, we can create two simple list grabs, one that\ngrabs multiples of two, and the other that grabs multiples\nof three:\n\n> twos, threes :: Monoid log =>\n>     Control.Grab.Simple [Integer] log [Integer]\n> twos   = partition (Data.List.partition (\\x -> mod x 2 == 0))\n> threes = partition (Data.List.partition (\\x -> mod x 3 == 0))\n\n> λ> runGrabMaybe ((,) <$> twos @() <*> threes @()) [1..10]\n> Just ([2,4,6,8,10],[3,9])\n\nNotice that the second part of the resulting tuple contains only\nthe /odd/ multiples of three. Because @twos@ runs first, it\nconsumes @6@ before the @threes@ can get it.\n\n== Pipeline composition\n\n@a / b@ is a pipeline of two grabs, where the desideratum from\n@a@ is the @bag@ for @b@.\n.\n> (/) :: Semigroup log\n>     => Grab bag residue log x\n>     -> Grab x  _residue log desideratum\n>     -> Grab bag residue log desideratum\n\n> λ> runGrabMaybe (twos @() / threes @()) [1..10]\n> Just [6]\n\n> λ> runGrabMaybe ((,) <$> (twos @() / threes @()) <*> threes @()) [1..10]\n> Just ([6],[3,9])";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "grab-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."grab" or (errorHandler.buildDepError "grab"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "grab-space-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."grab" or (errorHandler.buildDepError "grab"))
          ];
          buildable = true;
        };
        "grab-time-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."grab" or (errorHandler.buildDepError "grab"))
          ];
          buildable = true;
        };
      };
    };
  }