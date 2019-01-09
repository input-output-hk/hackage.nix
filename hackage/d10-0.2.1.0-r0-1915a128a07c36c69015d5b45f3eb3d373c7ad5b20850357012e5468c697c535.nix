{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "d10"; version = "0.2.1.0"; };
      license = "MIT";
      copyright = "2018 Typeclass Consulting, LLC";
      maintainer = "Chris Martin, Julie Moronuki";
      author = "Chris Martin";
      homepage = "https://github.com/typeclasses/d10";
      url = "";
      synopsis = "Digits 0-9";
      description = "Data types representing the digits zero through nine.\n\n== Modules\n\nEach of the following modules defines a different type named\n@D10@, all of which are different representations of the same\nconcept:\n\n* \"Data.D10.Char\" - Defines a @D10@ type as a newtype for @Char@,\nwhere the values are restricted to characters between @'0'@ and\n@'9'@.\n* \"Data.D10.Num\" - Defines a @D10@ type as a newtype for any\ntype with an instance of the @Num@ class, where the values\nare restricted to numbers between @fromInteger 0@ and\n@fromInteger 9@.\n* \"Data.D10.Safe\" - Defines a @D10@ type as\n@D0 | D1 | D2 | ... | D9@.\n\nOther modules:\n\n* \"Data.D10.Predicate\" - Functions to test whether values of\nvarious types represent digits in the range /0/ to /9/.\n\n== Quasi-quoters\n\nEach module that defines a @D10@ type also defines quasi-quoters\nfor it. With the @QuasiQuotes@ GHC extension enabled, a single\ndigit like /7/ can be written as @[d10|7|]@, and a list of digits\nlike /[4,5,6]/ can be written as @[d10|456|]@. For \"Data.D10.Char\"\nand \"Data.D10.Num\", the quasi-quoters are an important feature,\nbecause the @D10@ types defined in these modules have unsafe\nconstructors, and the quasi-quoters provide compile-time assurance\nthat we never construct a @D10@ that represents a value outside\nthe range /0/ to /9/. For \"Data.D10.Safe\", the quasi-quoter is\noffered merely as a possible convenience, allowing you to write\n@[d10|456789|]@ in place of the somewhat longer expression\n@[D4,D5,D6,D7,D8,D9]@.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.template-haskell) ]; };
      tests = {
        "doctest" = { depends = [ (hsPkgs.base) (hsPkgs.doctest) ]; };
        };
      };
    }