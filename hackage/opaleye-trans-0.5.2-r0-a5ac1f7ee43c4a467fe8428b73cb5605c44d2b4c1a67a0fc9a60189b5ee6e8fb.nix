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
      identifier = { name = "opaleye-trans"; version = "0.5.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Bitnomial, Inc";
      maintainer = "wraithm@gmail.com, opensource@bitnomial.com";
      author = "Matthew Wraith";
      homepage = "https://github.com/bitnomial/opaleye-trans";
      url = "";
      synopsis = "A monad transformer for Opaleye";
      description = "A monad transformer for Opaleye with exceptions";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."opaleye" or (errorHandler.buildDepError "opaleye"))
          (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
          (hsPkgs."product-profunctors" or (errorHandler.buildDepError "product-profunctors"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          ];
        buildable = true;
        };
      exes = {
        "opaleye-rosetree" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."opaleye" or (errorHandler.buildDepError "opaleye"))
            (hsPkgs."opaleye-trans" or (errorHandler.buildDepError "opaleye-trans"))
            (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
            (hsPkgs."product-profunctors" or (errorHandler.buildDepError "product-profunctors"))
            ];
          buildable = true;
          };
        "opaleye-rosetree2" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."opaleye" or (errorHandler.buildDepError "opaleye"))
            (hsPkgs."opaleye-trans" or (errorHandler.buildDepError "opaleye-trans"))
            (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
            (hsPkgs."product-profunctors" or (errorHandler.buildDepError "product-profunctors"))
            ];
          buildable = true;
          };
        };
      };
    }