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
      specVersion = "3.4";
      identifier = { name = "kindly-functors"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "ssbothwell@gmail.com";
      author = "Solomon Bothwell";
      homepage = "https://www.github.com/solomon-b/kindly-functors";
      url = "";
      synopsis = "A category polymorphic `Functor` typeclass";
      description = "A category polymorphic `Functor` typeclass.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."kind-generics" or (errorHandler.buildDepError "kind-generics"))
          (hsPkgs."kind-generics-th" or (errorHandler.buildDepError "kind-generics-th"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."these" or (errorHandler.buildDepError "these"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."witherable" or (errorHandler.buildDepError "witherable"))
        ];
        buildable = true;
      };
      sublibs = {
        "laws" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."kindly-functors" or (errorHandler.buildDepError "kindly-functors"))
            (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."hedgehog-classes" or (errorHandler.buildDepError "hedgehog-classes"))
          ];
          buildable = true;
        };
      };
      tests = {
        "kindly-functors-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."hedgehog-classes" or (errorHandler.buildDepError "hedgehog-classes"))
            (hsPkgs."kind-generics" or (errorHandler.buildDepError "kind-generics"))
            (hsPkgs."kind-generics-th" or (errorHandler.buildDepError "kind-generics-th"))
            (hsPkgs."kindly-functors" or (errorHandler.buildDepError "kindly-functors"))
            (hsPkgs."kindly-functors".components.sublibs.laws or (errorHandler.buildDepError "kindly-functors:laws"))
            (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
            (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."these" or (errorHandler.buildDepError "these"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = true;
        };
      };
    };
  }