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
      identifier = { name = "scientific-notation"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/scientific-notation";
      url = "";
      synopsis = "Scientific notation intended for tokenization";
      description = "This library provides a type used to represent a number in\nscientific notation. This is most frequently useful when\ntokenizing or parsing a language. Languages like JSON and SQL\nsupport numberic literals written in scientific notation, even\nthough backends frequently reject numbers outside a given range.\nThis library provides a compact representation of numbers in\nscientific notation. In the common case of the coefficient and\nthen exponent each being small enough to be represented by a\nmachine word, this library avoids the need for any indirections\nto retrieve the number. Consider some tokenization scheme:\n`data Token = ... | Number {-# UNPACK #-} !Scientific`.\nIn this case, the unboxed coefficient and exponent are unpacked\ninto the `Number` data constructor if they can each be represented\nby a machine word.\n\nThe internal representation does not normalize numbers. That is,\nparsing `300e-2` resulting in a representation that uses `300` and\n`-2` rather than `3` and `0`.\nThis work is deferred with the expectation that a number in scientific\nnotation is consumed either zero or one times. This library is not\noptimized for use-cases that consume a `Scientific` more than once\nsince normalization is reapplied every time.\n\nThe primary library that operates in this same space is `scientific`.\nCompared to `scientific`, this library distinguishes itself from\n`scientific` in the following ways:\n\n* Correctness: `scientific` does not correctly handle large exponents. See\n<https://github.com/basvandijk/scientific/issues/62 issue #62>.\n\n* Parsing: The `scientific-notation` parser outperforms the `scientific`\nparser that ships with `aeson` by a factor of five on small numbers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytesmith" or (buildDepError "bytesmith"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."byteslice" or (buildDepError "byteslice"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."scientific-notation" or (buildDepError "scientific-notation"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."bytesmith" or (buildDepError "bytesmith"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."gauge" or (buildDepError "gauge"))
            (hsPkgs."byteslice" or (buildDepError "byteslice"))
            (hsPkgs."scientific-notation" or (buildDepError "scientific-notation"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."bytesmith" or (buildDepError "bytesmith"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."scientific" or (buildDepError "scientific"))
            (hsPkgs."run-st" or (buildDepError "run-st"))
            ];
          buildable = true;
          };
        };
      };
    }