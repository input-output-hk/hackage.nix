{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "chronos"; version = "1.0.3"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."clock" or ((hsPkgs.pkgs-errors).buildDepError "clock"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."torsor" or ((hsPkgs.pkgs-errors).buildDepError "torsor"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "chronos-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."chronos" or ((hsPkgs.pkgs-errors).buildDepError "chronos"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }