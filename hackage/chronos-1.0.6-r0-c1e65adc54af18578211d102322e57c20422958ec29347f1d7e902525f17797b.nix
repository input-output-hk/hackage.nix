{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "chronos"; version = "1.0.6"; };
      license = "BSD-3-Clause";
      copyright = "2016 Andrew Martin";
      maintainer = "Andrew Martin <andrew.thaddeus@gmail.com>\nchessai <chessai1996@gmail.com>";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/chronos";
      url = "";
      synopsis = "A performant time library";
      description = "Chronos is a performance-oriented time library for Haskell, with a\nstraightforward API. The main differences between this\nand the <http://hackage.haskell.org/package/time time> library\nare:\n* Chronos uses machine integers where possible. This means\nthat time-related arithmetic should be faster, with the\ndrawback that the types are incapable of representing times\nthat are very far in the future or the past (because Chronos\nprovides nanosecond, rather than picosecond, resolution).\nFor most users, this is not a hindrance.\n* Chronos provides 'ToJSON'/'FromJSON' instances for serialisation.\n* Chronos provides 'Unbox' instances for working with unboxed vectors.\n* Chronos provides 'Prim' instances for working with byte arrays/primitive arrays.\n* Chronos uses normal non-overloaded haskell functions for\nencoding and decoding time. It provides <http://hackage.haskell.org/package/attoparsec attoparsec> parsers for both 'Text' and\n'ByteString'. Additionally, Chronos provides functions for\nencoding time to 'Text' or 'ByteString'. The http://hackage.haskell.org/package/time time> library accomplishes these with the\n<http://hackage.haskell.org/package/time-1.9.3/docs/Data-Time-Format.html Data.Time.Format> module, which uses UNIX-style datetime\nformat strings. The approach taken by Chronos is faster and\ncatches more mistakes at compile time, at the cost of being\nless expressive.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.clock)
          (hsPkgs.hashable)
          (hsPkgs.primitive)
          (hsPkgs.semigroups)
          (hsPkgs.text)
          (hsPkgs.torsor)
          (hsPkgs.vector)
          ];
        };
      tests = {
        "chronos-test" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.chronos)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.text)
            (hsPkgs.torsor)
            ];
          };
        "doctest" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.chronos)
            (hsPkgs.doctest)
            ];
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.chronos)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.old-locale)
            (hsPkgs.text)
            (hsPkgs.thyme)
            (hsPkgs.time)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }