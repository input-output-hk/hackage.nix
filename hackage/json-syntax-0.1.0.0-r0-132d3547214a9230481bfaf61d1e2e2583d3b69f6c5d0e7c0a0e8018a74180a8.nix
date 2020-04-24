{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "json-syntax"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/json-syntax";
      url = "";
      synopsis = "High-performance JSON parser";
      description = "This library parses JSON into a @Value@ type that is consistent with the\nABNF described in [RFC 7159](https://tools.ietf.org/html/rfc7159). The\nparser is about six times faster than the parser that `aeson` provides.\nThis parser is however, non-resumable, so if resumable parsing is\nimportant, `aeson` should be preferred.\n\nThis library does not include any functions or typeclasses to help users\nmarshal `Value` to their application-specific data types. Such functions\nand typeclasses are outside the scope of this library. If anyone writes a\nlibrary that offers users these conveniences open a issue so that the\n@json-syntax@ documentation can point users to it.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array-builder" or ((hsPkgs.pkgs-errors).buildDepError "array-builder"))
          (hsPkgs."array-chunks" or ((hsPkgs.pkgs-errors).buildDepError "array-chunks"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytesmith" or ((hsPkgs.pkgs-errors).buildDepError "bytesmith"))
          (hsPkgs."byteslice" or ((hsPkgs.pkgs-errors).buildDepError "byteslice"))
          (hsPkgs."scientific-notation" or ((hsPkgs.pkgs-errors).buildDepError "scientific-notation"))
          (hsPkgs."text-short" or ((hsPkgs.pkgs-errors).buildDepError "text-short"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."array-chunks" or ((hsPkgs.pkgs-errors).buildDepError "array-chunks"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."byteslice" or ((hsPkgs.pkgs-errors).buildDepError "byteslice"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."json-syntax" or ((hsPkgs.pkgs-errors).buildDepError "json-syntax"))
            (hsPkgs."neat-interpolation" or ((hsPkgs.pkgs-errors).buildDepError "neat-interpolation"))
            (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
            (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
            (hsPkgs."scientific-notation" or ((hsPkgs.pkgs-errors).buildDepError "scientific-notation"))
            (hsPkgs."small-bytearray-builder" or ((hsPkgs.pkgs-errors).buildDepError "small-bytearray-builder"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."text-short" or ((hsPkgs.pkgs-errors).buildDepError "text-short"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."byteslice" or ((hsPkgs.pkgs-errors).buildDepError "byteslice"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."gauge" or ((hsPkgs.pkgs-errors).buildDepError "gauge"))
            (hsPkgs."json-syntax" or ((hsPkgs.pkgs-errors).buildDepError "json-syntax"))
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