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
      identifier = { name = "isobmff"; version = "0.13.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016-2019 Sven Heyll, Lindenbaum GmbH";
      maintainer = "sven.heyll@lindenbaum.eu";
      author = "Sven Heyll";
      homepage = "https://github.com/sheyll/isobmff#readme";
      url = "";
      synopsis = "A parser and generator for the ISO-14496-12/14 base media file format";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."function-builder" or (errorHandler.buildDepError "function-builder"))
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
            (hsPkgs."isobmff" or (errorHandler.buildDepError "isobmff"))
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
            (hsPkgs."isobmff" or (errorHandler.buildDepError "isobmff"))
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