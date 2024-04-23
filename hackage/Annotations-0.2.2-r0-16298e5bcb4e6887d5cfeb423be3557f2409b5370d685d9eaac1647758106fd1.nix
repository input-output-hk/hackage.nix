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
      specVersion = "1.8";
      identifier = { name = "Annotations"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2008-2015 Martijn van Steenbergen";
      maintainer = "martijn@van.steenbergen.nl";
      author = "Martijn van Steenbergen";
      homepage = "";
      url = "";
      synopsis = "Constructing, analyzing and destructing annotated trees";
      description = "@Annotations@ provides utility functions to make working with annotated trees easier. There are two implementations: one for working with open datatypes that explicitly make their child positions accessible through a type argument, and one for working with MultiRec datatypes.\n\nParser combinators make it easy to construct trees annotated with position information. For the MultiRec implementation, there is the @Yield@ monad that allows construction of trees in postorder.\n\nError algebras allow destruction of trees using catamorphisms. The algebra is allowed to indicate failure in which case the error is automatically coupled with the annotation at the position at which the error occurred.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."multirec" or (errorHandler.buildDepError "multirec"))
        ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."Annotations" or (errorHandler.buildDepError "Annotations"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."multirec" or (errorHandler.buildDepError "multirec"))
          ];
          buildable = true;
        };
      };
    };
  }