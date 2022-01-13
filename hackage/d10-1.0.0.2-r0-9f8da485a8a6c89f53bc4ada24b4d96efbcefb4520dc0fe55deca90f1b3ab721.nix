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
      identifier = { name = "d10"; version = "1.0.0.2"; };
      license = "MIT";
      copyright = "2018-2021 Mission Valley Software LLC";
      maintainer = "Chris Martin, Julie Moronuki";
      author = "Chris Martin";
      homepage = "https://github.com/typeclasses/d10";
      url = "";
      synopsis = "Digits 0-9";
      description = "Data types representing the digits zero through nine.\n\n== Modules\n\nEach of the following modules defines a different type named\n@D10@, all of which are different representations of the same\nconcept:\n\n* \"D10.Char\" - Defines a @D10@ type as a newtype for @Char@,\n  where the values are restricted to characters between\n  @'0'@ and @'9'@\n* \"D10.Num\" - Defines a @D10@ type as a newtype for any\n  type with an instance of the @Num@ class, where the values\n  are restricted to numbers between @fromInteger 0@ and\n  @fromInteger 9@\n* \"D10.Safe\" - Defines a @D10@ type as @D0 | D1 | D2 | ... | D9@\n\nThe @Arithmetic@ modules provide infix operators (@+@), (@-@), (@*@)\nfor modular arithmetic:\n\n* \"D10.Char.Arithmetic\"\n* \"D10.Num.Arithmetic\"\n* \"D10.Safe.Arithmetic\"\n\nThe following modules export constructors that can be used\nincorrectly:\n\n* \"D10.Char.Unsafe\"\n* \"D10.Num.Unsafe\"\n\nFunctions to test whether values of various types represent\ndigits in the range 0 to 9:\n\n* \"D10.Predicate\"\n\n== Quasi-quoters\n\n* The \"D10.Char\" and \"D10.Num\" modules include quasi-quoters\n  named @d10@ used to express single digits. For example, 7\n  can be written as @[d10|7|]@. This is an important feature\n  because the @D10@ types defined in these modules have\n  unsafe constructors, and the quasi-quoters provide\n  compile-time assurance that we never construct a @D10@\n  that represents a value outside the range 0 to 9.\n* \"D10.Char\", \"D10.Num\", and \"D10.Safe\" include quasi-quoters\n  named @d10list@ to express lists of digits. For example,\n  [4, 5, 6] can be written as @[d10list|456|]@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "char" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."d10" or (errorHandler.buildDepError "d10"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            ];
          buildable = true;
          };
        "num" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."d10" or (errorHandler.buildDepError "d10"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            ];
          buildable = true;
          };
        "safe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."d10" or (errorHandler.buildDepError "d10"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            ];
          buildable = true;
          };
        };
      };
    }