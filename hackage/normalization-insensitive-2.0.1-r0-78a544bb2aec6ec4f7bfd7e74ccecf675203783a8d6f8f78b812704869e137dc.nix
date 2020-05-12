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
      specVersion = "1.8";
      identifier = { name = "normalization-insensitive"; version = "2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2011 Bas van Dijk,\n2016 Patrick Pelletier";
      maintainer = "Patrick Pelletier <code@funwithsoftware.org>";
      author = "Bas van Dijk,\nPatrick Pelletier";
      homepage = "https://github.com/ppelleti/normalization-insensitive";
      url = "";
      synopsis = "Normalization insensitive string comparison";
      description = "The module @Data.Unicode.NormalizationInsensitive@ provides\nthe 'NI' type constructor which can be parameterized by a\nstring-like type like: 'String', 'ByteString', 'Text',\netc.. Comparisons of values of the resulting type will be\ninsensitive to normalization.\nThis is very similar in spirit to the @case-insensitive@\npackage, and is in fact based on the same code.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."unicode-transforms" or (errorHandler.buildDepError "unicode-transforms"))
          ];
        buildable = true;
        };
      tests = {
        "test-normalization-insensitive" = {
          depends = [
            (hsPkgs."normalization-insensitive" or (errorHandler.buildDepError "normalization-insensitive"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench-normalization-insensitive" = {
          depends = [
            (hsPkgs."normalization-insensitive" or (errorHandler.buildDepError "normalization-insensitive"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            ];
          buildable = true;
          };
        };
      };
    }