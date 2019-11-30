let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "chronos"; version = "1.1"; };
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
        depends = ([
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."torsor" or (buildDepError "torsor"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."Win32" or (buildDepError "Win32"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.4") (hsPkgs."clock" or (buildDepError "clock"));
        buildable = true;
        };
      tests = {
        "chronos-test" = {
          depends = [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."chronos" or (buildDepError "chronos"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."torsor" or (buildDepError "torsor"))
            ];
          buildable = true;
          };
        "doctest" = {
          depends = [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."chronos" or (buildDepError "chronos"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."chronos" or (buildDepError "chronos"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."thyme" or (buildDepError "thyme"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }