{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "chronos"; version = "1.0.4"; };
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
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
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
            (hsPkgs.base)
            (hsPkgs.chronos)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.attoparsec)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework-hunit)
            ];
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.attoparsec)
            (hsPkgs.bytestring)
            (hsPkgs.chronos)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.old-locale)
            (hsPkgs.QuickCheck)
            (hsPkgs.thyme)
            (hsPkgs.time)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }