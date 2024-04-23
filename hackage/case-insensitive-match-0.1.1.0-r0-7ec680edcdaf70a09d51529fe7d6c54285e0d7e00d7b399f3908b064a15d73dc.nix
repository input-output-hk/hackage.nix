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
      specVersion = "1.10";
      identifier = { name = "case-insensitive-match"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Michael Hatfield";
      maintainer = "github@michael-hatfield.com";
      author = "Michael Hatfield";
      homepage = "https://github.com/mikehat/case-insensitive-match";
      url = "";
      synopsis = "A simplified, faster way to do case-insensitive matching.";
      description = "A way to do case-insensitive string matching and comparison with less\noverhead and more speed. The 'Data.CaseInsensitive.Eq' module offers\nsimplified syntax and optimized instances for 'ByteString', 'String' and\n'Text'. In particular, the 'ByteString' implementation assumes ISO-8859-1\n(8-bit) encoding and performs benchmark testing significantly faster than\nother implementations.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      exes = {
        "readme-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."case-insensitive-match" or (errorHandler.buildDepError "case-insensitive-match"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
          buildable = true;
        };
      };
      tests = {
        "test-basics" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."case-insensitive-match" or (errorHandler.buildDepError "case-insensitive-match"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bench-others" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."case-insensitive-match" or (errorHandler.buildDepError "case-insensitive-match"))
            (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
            (hsPkgs."random-strings" or (errorHandler.buildDepError "random-strings"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
          ];
          buildable = true;
        };
        "bench-tagsoup" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
            (hsPkgs."case-insensitive-match" or (errorHandler.buildDepError "case-insensitive-match"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
          ];
          buildable = true;
        };
      };
    };
  }