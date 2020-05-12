{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "json-syntax"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/byteverse/json-syntax";
      url = "";
      synopsis = "High-performance JSON parser and encoder";
      description = "This library parses JSON into a @Value@ type that is consistent with the\nABNF described in [RFC 7159](https://tools.ietf.org/html/rfc7159). The\nparser is about six times faster than the parser that `aeson` provides.\nThis parser is however, non-resumable, so if resumable parsing is\nimportant, `aeson` should be preferred.\n\nThis library does not include any functions or typeclasses to help users\nmarshal `Value` to their application-specific data types. Such functions\nand typeclasses are outside the scope of this library. If anyone writes a\nlibrary that offers users these conveniences open a issue so that the\n@json-syntax@ documentation can point users to it.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array-builder" or (errorHandler.buildDepError "array-builder"))
          (hsPkgs."array-chunks" or (errorHandler.buildDepError "array-chunks"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytebuild" or (errorHandler.buildDepError "bytebuild"))
          (hsPkgs."byteslice" or (errorHandler.buildDepError "byteslice"))
          (hsPkgs."bytesmith" or (errorHandler.buildDepError "bytesmith"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."scientific-notation" or (errorHandler.buildDepError "scientific-notation"))
          (hsPkgs."text-short" or (errorHandler.buildDepError "text-short"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."array-chunks" or (errorHandler.buildDepError "array-chunks"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."byteslice" or (errorHandler.buildDepError "byteslice"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."json-syntax" or (errorHandler.buildDepError "json-syntax"))
            (hsPkgs."neat-interpolation" or (errorHandler.buildDepError "neat-interpolation"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."scientific-notation" or (errorHandler.buildDepError "scientific-notation"))
            (hsPkgs."bytebuild" or (errorHandler.buildDepError "bytebuild"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-short" or (errorHandler.buildDepError "text-short"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."byteslice" or (errorHandler.buildDepError "byteslice"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."gauge" or (errorHandler.buildDepError "gauge"))
            (hsPkgs."json-syntax" or (errorHandler.buildDepError "json-syntax"))
            (hsPkgs."neat-interpolation" or (errorHandler.buildDepError "neat-interpolation"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."scientific-notation" or (errorHandler.buildDepError "scientific-notation"))
            ];
          buildable = true;
          };
        };
      };
    }