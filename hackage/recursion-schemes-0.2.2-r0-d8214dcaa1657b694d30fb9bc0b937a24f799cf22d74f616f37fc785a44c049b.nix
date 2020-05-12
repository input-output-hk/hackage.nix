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
      identifier = { name = "recursion-schemes"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2008-2011 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/recursion-schemes/";
      url = "";
      synopsis = "Generalized bananas, lenses and barbed wire";
      description = "Generalized bananas, lenses and barbed wire\n\n/Changes since 0.2.1/:\n\n* Added (generalized) prepro- and postpro- morphisms\n\n/Changes since 0.2/:\n\n* Added Elgot (co)algebras\n\n/Changes since 0.1/:\n\n* Removed dependency on Foldable from Mendler-style recursion schemes\n\n* Added Lambek's Lemma";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
          (hsPkgs."comonad-transformers" or (errorHandler.buildDepError "comonad-transformers"))
          (hsPkgs."streams" or (errorHandler.buildDepError "streams"))
          ];
        buildable = true;
        };
      };
    }