{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "chronos";
          version = "1.0.1";
        };
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
        chronos = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.attoparsec
            hsPkgs.aeson
            hsPkgs.hashable
            hsPkgs.primitive
            hsPkgs.torsor
            hsPkgs.clock
          ];
        };
        tests = {
          chronos-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.chronos
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.attoparsec
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.QuickCheck
              hsPkgs.HUnit
              hsPkgs.test-framework-hunit
            ];
          };
        };
      };
    }