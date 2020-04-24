{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "json-tokens"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2019 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/json-tokens";
      url = "";
      synopsis = "Tokenize JSON";
      description = "Convert JSON to a token stream. This libary focuses on\nhigh performance and minimal allocations. This library\nis distinguished from `aeson` in the following ways:\n\n* In `aeson`, `decode` parses JSON by building an AST\nthat resembles the ABNF given in RFC 7159. Notably,\nthis converts every JSON `object` to a `HashMap`.\n(This choice of intermediate data structure may not\nbe appropritae depending on how the user wants to\ninterpret the `object`). By constrast, `json-tokens`\nconverts a document to a token sequence.\n\n* For numbers, `aeson` uses `scientific`, but `json-tokens`\nuses `scientific-notation`. Although `scientific` and\n`scientific-notation` have similar APIs, `scientific-notation`\nincludes a parser that is about 4x faster and conversion\nfunctions that are 10x faster than those found in\n`scientific` and `aeson`.\n\n* For text, `aeson` uses the UTF-16-backed `text` library,\nbut `json-tokens` uses the UTF-8-backed `text-short`\nlibrary.\n\n* Parsing is resumable in `aeson`, which uses `attoparsec`,\nbut not in `json-tokens`, which uses `bytesmith`.\n\n* In `aeson`, all batteries are included. In particular,\nthe combination of typeclasses and GHC Generics\n(or Template Haskell) make it possible to elide lots of\nboilerplate. None of these are included in `json-tokens`.\n\nThe difference in design decisions means that solutions using\n`json-tokens` are able to decode JSON twice as fast as\nsolutions with `aeson. In the `zeek-json` benchmark suite,\na `json-tokens`-based decoding outperforms `aeson`'s `decode`\nby a factor of two. This speed comes at a cost. Users must\nwrite more code to use `json-tokens` than they do for `aeson`.\nIf high-throughput parsing of small JSON documents is paramount,\nthis cost may be worth bearing. It is always possible to go a\nstep further and forego tokenization entirely, parsing the\ndesired Haskell data type directly from a byte sequence. Doing this\nin a low-allocation way while retaining both the ability the\nhandle JSON `object` keys in any order and the ability to handle\nescape sequences in `object` keys is fiendishly difficult. Kudos\nto the brave soul that goes down that path. For the rest of us,\n`json-tokens` is a compromise worth considering.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."array-builder" or ((hsPkgs.pkgs-errors).buildDepError "array-builder"))
          (hsPkgs."text-short" or ((hsPkgs.pkgs-errors).buildDepError "text-short"))
          (hsPkgs."bytesmith" or ((hsPkgs.pkgs-errors).buildDepError "bytesmith"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."byteslice" or ((hsPkgs.pkgs-errors).buildDepError "byteslice"))
          (hsPkgs."array-chunks" or ((hsPkgs.pkgs-errors).buildDepError "array-chunks"))
          (hsPkgs."scientific-notation" or ((hsPkgs.pkgs-errors).buildDepError "scientific-notation"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."byteslice" or ((hsPkgs.pkgs-errors).buildDepError "byteslice"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."json-tokens" or ((hsPkgs.pkgs-errors).buildDepError "json-tokens"))
            (hsPkgs."neat-interpolation" or ((hsPkgs.pkgs-errors).buildDepError "neat-interpolation"))
            (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
            (hsPkgs."scientific-notation" or ((hsPkgs.pkgs-errors).buildDepError "scientific-notation"))
            (hsPkgs."small-bytearray-builder" or ((hsPkgs.pkgs-errors).buildDepError "small-bytearray-builder"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."byteslice" or ((hsPkgs.pkgs-errors).buildDepError "byteslice"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."gauge" or ((hsPkgs.pkgs-errors).buildDepError "gauge"))
            (hsPkgs."json-tokens" or ((hsPkgs.pkgs-errors).buildDepError "json-tokens"))
            (hsPkgs."neat-interpolation" or ((hsPkgs.pkgs-errors).buildDepError "neat-interpolation"))
            (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."scientific-notation" or ((hsPkgs.pkgs-errors).buildDepError "scientific-notation"))
            ];
          buildable = true;
          };
        };
      };
    }