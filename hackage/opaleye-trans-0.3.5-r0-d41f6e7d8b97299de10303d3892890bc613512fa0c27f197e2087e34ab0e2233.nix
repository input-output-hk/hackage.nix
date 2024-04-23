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
      identifier = { name = "opaleye-trans"; version = "0.3.5"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Bitnomial, Inc";
      maintainer = "wraithm@gmail.com";
      author = "Matthew Wraith";
      homepage = "https://github.com/WraithM/opaleye-trans";
      url = "";
      synopsis = "A monad transformer for Opaleye";
      description = "A monad transformer for Opaleye";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."opaleye" or (errorHandler.buildDepError "opaleye"))
          (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
          (hsPkgs."product-profunctors" or (errorHandler.buildDepError "product-profunctors"))
        ];
        buildable = true;
      };
      exes = {
        "opaleye-rosetree" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."opaleye" or (errorHandler.buildDepError "opaleye"))
            (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
            (hsPkgs."product-profunctors" or (errorHandler.buildDepError "product-profunctors"))
            (hsPkgs."opaleye-trans" or (errorHandler.buildDepError "opaleye-trans"))
          ];
          buildable = true;
        };
        "opaleye-rosetree2" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."opaleye" or (errorHandler.buildDepError "opaleye"))
            (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
            (hsPkgs."product-profunctors" or (errorHandler.buildDepError "product-profunctors"))
            (hsPkgs."opaleye-trans" or (errorHandler.buildDepError "opaleye-trans"))
          ];
          buildable = true;
        };
      };
    };
  }