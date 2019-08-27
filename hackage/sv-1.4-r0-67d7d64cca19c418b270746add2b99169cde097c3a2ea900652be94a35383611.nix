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
      specVersion = "1.10";
      identifier = { name = "sv"; version = "1.4"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2017-2019, Commonwealth Scientific and Industrial Research Organisation (CSIRO) ABN 41 687 119 230.";
      maintainer = "george@qfpl.io";
      author = "George Wilson";
      homepage = "https://github.com/qfpl/sv";
      url = "";
      synopsis = "Encode and decode separated values (CSV, PSV, ...)";
      description = "<<http://i.imgur.com/uZnp9ke.png>>\n\nsv (separated values) is a library for parsing, decoding, encoding, and\nprinting CSV and similar formats (such as PSV, TSV, and many more).\n\nsv uses an Applicative combinator style for decoding and encoding, rather\nthan a type class based approach. This means we can have multiple decoders\nfor the same type, multiple combinators of the same type, and we never have\nto worry about orphan instances. These decoders can be stitched together from\nprovided primitives and combinators, or you can build one from a parser\nfrom your favourite parser combinator library.\n\nFor parsing, sv uses <https://hackage.haskell.org/package/hw-dsv hw-dsv>, a high performance streaming CSV parser based on rank-select data structures.\nsv works with UTF-8, and should work with CP-1252 as well. It does not work\nwith UTF-16 or UTF-32.\n\nsv returns values for all errors that occur - not just the first. Errors have\nmore structure than just a string, indicating what went wrong.\n\nsv tries not to be opinionated about how your data should look. We intend for\nthe user to have a great degree of freedom to build the right decoder for\ntheir dataset.\n\nParts of sv are intended to be imported as follows:\n\n@\nimport Data.Sv\nimport qualified Data.Sv.Decode as D\nimport qualified Data.Sv.Encode as E\n@\n\nExamples:\n\n* Decoding a real CSV: <https://github.com/qfpl/sv/blob/master/examples/src/Data/Sv/Example/Species.lhs Species.lhs>\n* Decoding by column name: <https://github.com/qfpl/sv/blob/master/examples/src/Data/Sv/Example/Columnar.hs Columnar.hs>\n* Encoding data to a CSV: <https://github.com/qfpl/sv/blob/master/examples/src/Data/Sv/Example/Encoding.hs Encoding.hs>\n* Encoding data to a CSV with a header: <https://github.com/qfpl/sv/blob/master/examples/src/Data/Sv/Example/EncodingWithHeader.hs EncodingWithHeader.hs>\n* Handling NULL and Unknown occuring in a column of numbers: <https://github.com/qfpl/sv/blob/master/examples/src/Data/Sv/Example/Numbers.hs Numbers.hs>\n* Dealing with non-rectangular data: <https://github.com/qfpl/sv/blob/master/examples/src/Data/Sv/Example/Ragged.hs Ragged.hs>\n* Integrating with an existing attoparsec parser to read date stamps: <https://github.com/qfpl/sv/blob/master/examples/src/Data/Sv/Example/TableTennis.hs TableTennis.hs>\n\nTo get the best performance, the hw-dsv parser and its dependencies\nunderlying sv should be compiled with the flag @+bmi2@ to enable . These\nlibraries are:  @bits-extra@, @hw-rankselect@, @hw-rankselect-base@, and\n@hw-dsv@. A simple way to set the flags for all of them when building with\ncabal is to include a cabal.project file in your project containing\nsomething like the following:\n\n>packages: .\n>package bits-extra\n>  flags: +bmi2\n>package hw-rankselect\n>  flags: +bmi2\n>package hw-rankselect-base\n>  flags: +bmi2\n>package hw-dsv\n>  flags: +bmi2";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."contravariant" or (buildDepError "contravariant"))
          (hsPkgs."hw-dsv" or (buildDepError "hw-dsv"))
          (hsPkgs."semigroupoids" or (buildDepError "semigroupoids"))
          (hsPkgs."sv-core" or (buildDepError "sv-core"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."validation" or (buildDepError "validation"))
          ];
        };
      tests = {
        "tasty" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cassava" or (buildDepError "cassava"))
            (hsPkgs."contravariant" or (buildDepError "contravariant"))
            (hsPkgs."hedgehog" or (buildDepError "hedgehog"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."parsers" or (buildDepError "parsers"))
            (hsPkgs."Only" or (buildDepError "Only"))
            (hsPkgs."semigroupoids" or (buildDepError "semigroupoids"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."sv" or (buildDepError "sv"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hedgehog" or (buildDepError "tasty-hedgehog"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."trifecta" or (buildDepError "trifecta"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."validation" or (buildDepError "validation"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        };
      benchmarks = {
        "criterion" = {
          depends = [
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."hw-dsv" or (buildDepError "hw-dsv"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."sv" or (buildDepError "sv"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        };
      };
    }