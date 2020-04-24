{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "sv"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2017-2018, Commonwealth Scientific and Industrial Research Organisation (CSIRO) ABN 41 687 119 230.";
      maintainer = "george@qfpl.io";
      author = "George Wilson";
      homepage = "https://github.com/qfpl/sv";
      url = "";
      synopsis = "Encode and decode separated values (CSV, PSV, ...)";
      description = "<<http://i.imgur.com/uZnp9ke.png>>\n\nsv (separated values) is a library for parsing, decoding, encoding, and\nprinting CSV and similar formats (such as PSV, TSV, and many more).\n\nsv uses an Applicative combinator style for decoding and encoding, rather\nthan a type class based approach. This means we can have multiple decoders\nfor the same type, multiple combinators of the same type, and we never have\nto worry about orphan instances. These decoders can be stiched together from\nprovided primitives and combinators, or you can build one from a parser\nfrom your favourite parser combinator library.\n\nsv returns values for all errors that occur - not just the first. Errors have\nmore structure than just a string, indicating what went wrong.\n\nsv's parser is exposed so you can use it independently of the decoding, and\nencoding and printing are similarly standalone.\n\nsv focuses on correctness, on flexible and composable data types,\nand on useful and informative error values.\nSpeed is also important to us, but it is not as important as these other\nqualities.\n\nsv tries not to be opinionated about how your data should look. We intend for\nthe user to have a great degree of freedom to build the right decoder for\ntheir dataset.\n\nParts of sv are intended to be imported as follows:\n\n@\nimport Data.Sv\nimport qualified Data.Sv.Decode as D\nimport qualified Data.Sv.Encode as E\n@\n\nExamples:\n\n* Decoding a real CSV: <https://github.com/qfpl/sv/blob/master/examples/src/Data/Sv/Example/Species.lhs Species.lhs>\n* Encoding data to a CSV: <https://github.com/qfpl/sv/blob/master/examples/src/Data/Sv/Example/Encoding.hs Encoding.hs>\n* Handling NULL and Unknown occuring in a column of numbers: <https://github.com/qfpl/sv/blob/master/examples/src/Data/Sv/Example/Numbers.hs Numbers.hs>\n* Dealing with non-rectangular data: <https://github.com/qfpl/sv/blob/master/examples/src/Data/Sv/Example/Ragged.hs Ragged.hs>\n* Handling multiple logical documents in one file: <https://github.com/qfpl/sv/blob/master/examples/src/Data/Sv/Example/Concat.hs Concat.hs>\n* Integrating with an existing attoparsec parser to read date stamps: <https://github.com/qfpl/sv/blob/master/examples/src/Data/Sv/Example/TableTennis.hs TableTennis.hs>\n* Fixing inconsistent formatting with lenses: <https://github.com/qfpl/sv/blob/master/examples/src/Data/Sv/Example/Requote.hs Requote.hs>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ansi-wl-pprint" or ((hsPkgs.pkgs-errors).buildDepError "ansi-wl-pprint"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bifunctors" or ((hsPkgs.pkgs-errors).buildDepError "bifunctors"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."charset" or ((hsPkgs.pkgs-errors).buildDepError "charset"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."contravariant" or ((hsPkgs.pkgs-errors).buildDepError "contravariant"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."parsers" or ((hsPkgs.pkgs-errors).buildDepError "parsers"))
          (hsPkgs."profunctors" or ((hsPkgs.pkgs-errors).buildDepError "profunctors"))
          (hsPkgs."readable" or ((hsPkgs.pkgs-errors).buildDepError "readable"))
          (hsPkgs."semigroupoids" or ((hsPkgs.pkgs-errors).buildDepError "semigroupoids"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."trifecta" or ((hsPkgs.pkgs-errors).buildDepError "trifecta"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          (hsPkgs."validation" or ((hsPkgs.pkgs-errors).buildDepError "validation"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."void" or ((hsPkgs.pkgs-errors).buildDepError "void"))
          ];
        buildable = true;
        };
      tests = {
        "tasty" = {
          depends = [
            (hsPkgs."ansi-wl-pprint" or ((hsPkgs.pkgs-errors).buildDepError "ansi-wl-pprint"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."contravariant" or ((hsPkgs.pkgs-errors).buildDepError "contravariant"))
            (hsPkgs."hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."parsers" or ((hsPkgs.pkgs-errors).buildDepError "parsers"))
            (hsPkgs."semigroupoids" or ((hsPkgs.pkgs-errors).buildDepError "semigroupoids"))
            (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
            (hsPkgs."sv" or ((hsPkgs.pkgs-errors).buildDepError "sv"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hedgehog"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."trifecta" or ((hsPkgs.pkgs-errors).buildDepError "trifecta"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            (hsPkgs."validation" or ((hsPkgs.pkgs-errors).buildDepError "validation"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }