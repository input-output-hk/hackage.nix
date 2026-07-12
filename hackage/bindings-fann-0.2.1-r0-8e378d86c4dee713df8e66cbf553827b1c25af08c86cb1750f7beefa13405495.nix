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
      identifier = { name = "bindings-fann"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "gley <johnw@newartisans.com>";
      author = "Maurício C. Antunes";
      homepage = "";
      url = "";
      synopsis = "Project bindings-* raw interface to FANN neural network library";
      description = "Low level bindings to FANN neural network library, part\nof the @bindings-*@ project. See:\n\n<https://github.com/rethab/bindings-dsl>\n\n<http://leenissen.dk>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bindings-DSL" or (errorHandler.buildDepError "bindings-DSL"))
        ];
        pkgconfig = [
          (pkgconfPkgs."fann" or (errorHandler.pkgConfDepError "fann"))
        ];
        buildable = true;
      };
    };
  }