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
      specVersion = "1.12";
      identifier = { name = "failable"; version = "1.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Erick Gonzalez";
      maintainer = "erick@codemonkeylabs.de";
      author = "Erick Gonzalez";
      homepage = "";
      url = "";
      synopsis = "A 'Failable' error monad class to unify failure across monads that can fail";
      description = "This library contains a 'Failable' error monad class to unify failure across monads and transformers most commonly used to implement pipelines that can fail and does so in a simple nonsense way by providing the means of signaling a computation \"failure\" while striving to keep the failure behaviour consistent with the actual definition of the monad/transformer. Please refer to the README file for a more elaborate description and some examples.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }