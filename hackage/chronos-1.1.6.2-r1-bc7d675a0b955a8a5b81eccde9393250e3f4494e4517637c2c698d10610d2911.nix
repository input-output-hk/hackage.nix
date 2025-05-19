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
      identifier = { name = "chronos"; version = "1.1.6.2"; };
      license = "BSD-3-Clause";
      copyright = "2016 Andrew Martin";
      maintainer = "amartin@layer3com.com, chessai1996@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/byteverse/chronos";
      url = "";
      synopsis = "A high-performance time library";
      description = "Chronos is a performance-oriented time library for Haskell, with a\nstraightforward API. The main differences between this\nand the <http://hackage.haskell.org/package/time time> library\nare:\n* Chronos uses machine integers where possible. This means\nthat time-related arithmetic should be faster, with the\ndrawback that the types are incapable of representing times\nthat are very far in the future or the past (because Chronos\nprovides nanosecond, rather than picosecond, resolution).\nFor most users, this is not a hindrance.\n* Chronos provides 'ToJSON'/'FromJSON' instances for serialisation.\n* Chronos provides 'Unbox' instances for working with unboxed vectors.\n* Chronos provides 'Prim' instances for working with byte arrays/primitive arrays.\n* Chronos uses normal non-overloaded haskell functions for\nencoding and decoding time. It provides <http://hackage.haskell.org/package/attoparsec attoparsec> parsers for both 'Text' and\n'ByteString'. Additionally, Chronos provides functions for\nencoding time to 'Text' or 'ByteString'. The http://hackage.haskell.org/package/time time> library accomplishes these with the\n<http://hackage.haskell.org/package/time-1.9.3/docs/Data-Time-Format.html Data.Time.Format> module, which uses UNIX-style datetime\nformat strings. The approach taken by Chronos is faster and\ncatches more mistakes at compile time, at the cost of being\nless expressive.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytebuild" or (errorHandler.buildDepError "bytebuild"))
          (hsPkgs."byteslice" or (errorHandler.buildDepError "byteslice"))
          (hsPkgs."bytesmith" or (errorHandler.buildDepError "bytesmith"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."natural-arithmetic" or (errorHandler.buildDepError "natural-arithmetic"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-short" or (errorHandler.buildDepError "text-short"))
          (hsPkgs."torsor" or (errorHandler.buildDepError "torsor"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ] ++ pkgs.lib.optional (system.isWindows) (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"));
        buildable = true;
      };
      tests = {
        "chronos-test" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."chronos" or (errorHandler.buildDepError "chronos"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."torsor" or (errorHandler.buildDepError "torsor"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."chronos" or (errorHandler.buildDepError "chronos"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-short" or (errorHandler.buildDepError "text-short"))
            (hsPkgs."thyme" or (errorHandler.buildDepError "thyme"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
      };
    };
  }