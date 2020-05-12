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
      specVersion = "1.10";
      identifier = { name = "chronos"; version = "1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2016 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/chronos#readme";
      url = "";
      synopsis = "A performant time library";
      description = "Performance-oriented time library for haskell. The main differences\nbetween this and \"time\" are that this library:\n\n* Uses machine integers where possible. This means that some time-related\narithmetic should be faster. It also means that the types are incapable\nof representing times that are very far in the future or the past.\n\n* Provides \"ToJSON\" and \"FromJSON\" instances for json serialization.\n\n* Provides \"Unbox\" instances for working with unboxed vectors.\n\n* Uses normal non-overloaded haskell functions for encoding and decoding time. It provides\n\"attoparsec\" parsers for both \"Text\" and \"ByteString\". Additionally, it\nprovides functions for encoding time as \"Text\" or \"ByteString\". The \"time\"\nlibrary uses accomplishes these with the \"Data.Time.Format\" module,\nwhich uses UNIX-style datetime format strings. It is expected that\nthe approach taken in this library is faster and catches more mistakes\nat compile time at the cost of being less expressive.\n\n* Only provides nanosecond resolution instead of picosecond resolution.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."torsor" or (errorHandler.buildDepError "torsor"))
          (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
          ];
        buildable = true;
        };
      tests = {
        "chronos-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."chronos" or (errorHandler.buildDepError "chronos"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }