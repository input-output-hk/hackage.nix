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
      specVersion = "1.6";
      identifier = { name = "cmathml3"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2012 The University of Auckland";
      maintainer = "ak.miller@auckland.ac.nz";
      author = "Andrew Miller";
      homepage = "";
      url = "";
      synopsis = "Data model, parser, serialiser and transformations for Content MathML 3";
      description = "Data model, parser, serialiser and basic transformations for working with Content MathML 3";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."arrowapply-utils" or (errorHandler.buildDepError "arrowapply-utils"))
          (hsPkgs."monads-tf" or (errorHandler.buildDepError "monads-tf"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."url" or (errorHandler.buildDepError "url"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          ];
        buildable = true;
        };
      exes = {
        "mathtest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          buildable = true;
          };
        };
      };
    }