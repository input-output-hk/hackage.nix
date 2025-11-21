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
      identifier = { name = "dom-parser"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "makeit@typeable.io";
      author = "Typeable.io contributors";
      homepage = "https://github.com/s9gf4ult/dom-parser";
      url = "";
      synopsis = "Simple monadic DOM parser";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."shakespeare" or (errorHandler.buildDepError "shakespeare"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."dom-parser" or (errorHandler.buildDepError "dom-parser"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."shakespeare" or (errorHandler.buildDepError "shakespeare"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
          ];
          buildable = true;
        };
      };
    };
  }