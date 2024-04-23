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
      specVersion = "2.2";
      identifier = { name = "pandoc-builder-monadic"; version = "1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "owen@owen.cafe";
      author = "Owen Shepherd";
      homepage = "https://github.com/414owen/pandoc-builder-monadic";
      url = "";
      synopsis = "A monadic DSL for building pandoc documents";
      description = "A convenient way to build pandoc documents.\nSupports all of the applicative and monadic utilities, and\nreduces syntactic noise via do notation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }