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
      identifier = { name = "DeepArrow"; version = "0.4.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2007-2013 by Conal Elliott";
      maintainer = "conal@conal.net";
      author = "Conal Elliott <conal@conal.net>";
      homepage = "http://haskell.org/haskellwiki/DeepArrow";
      url = "";
      synopsis = "Arrows for \"deep application\"";
      description = "This library provides a framework for type-directed composition of value\neditors (non-syntactic transformations).  The tools enable \\\"deep function\napplication\\\" in two senses: deep application of functions and\napplication of deep functions.  These tools generalize beyond values and\nfunctions, via the @DeepArrow@ subclass of the @Arrow@ type class.\n\nFor more information see:\n\n* The project wiki page <http://haskell.org/haskellwiki/DeepArrow>\n\n* Application of deep arrows for composable interfaces in the TV library:\n<http://haskell.org/haskellwiki/TV>\n\n* The motivating idea and paper \"Tangible Functional Programming\":\n<http://conal.net/papers/Eros>\n\nThe primary module is \"Control.Arrow.DeepArrow\".  Examples in\n\"Control.Arrow.DeepArrow.Examples\".\n\n/Note/: Many of the type signatures use infix type operators (as in\n@a~>b@).  In reading the documentation and code, be aware that infix\noperators bind more tightly than @->@.\n\n&#169; 2007-2012 by Conal Elliott (<http://conal.net>); BSD3 license.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."TypeCompose" or (errorHandler.buildDepError "TypeCompose"))
          (hsPkgs."haskell-src" or (errorHandler.buildDepError "haskell-src"))
          ];
        buildable = true;
        };
      };
    }