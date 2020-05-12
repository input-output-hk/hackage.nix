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
    flags = { tracing = true; fullbenchmarks = true; complextests = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "isobmff-builder"; version = "0.11.3.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Sven Heyll, Lindenbaum GmbH";
      maintainer = "sven.heyll@lindenbaum.eu";
      author = "Sven Heyll";
      homepage = "https://github.com/sheyll/isobmff-builder#readme";
      url = "";
      synopsis = "A (bytestring-) builder for the ISO-14496-12 base media file format";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."type-list" or (errorHandler.buildDepError "type-list"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."type-spec" or (errorHandler.buildDepError "type-spec"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."pretty-types" or (errorHandler.buildDepError "pretty-types"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."isobmff-builder" or (errorHandler.buildDepError "isobmff-builder"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."type-spec" or (errorHandler.buildDepError "type-spec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."pretty-types" or (errorHandler.buildDepError "pretty-types"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bit-records" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."isobmff-builder" or (errorHandler.buildDepError "isobmff-builder"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."type-spec" or (errorHandler.buildDepError "type-spec"))
            ];
          buildable = true;
          };
        };
      };
    }