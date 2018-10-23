{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "DeepArrow";
        version = "0.3.4";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2007-2012 by Conal Elliott";
      maintainer = "conal@conal.net";
      author = "Conal Elliott <conal@conal.net>";
      homepage = "http://haskell.org/haskellwiki/DeepArrow";
      url = "http://code.haskell.org/~conal/code/DeepArrow";
      synopsis = "Arrows for \"deep application\"";
      description = "This library provides a framework for type-directed composition of value\neditors (non-syntactic transformations).  The tools enable \\\"deep function\napplication\\\" in two senses: deep application of functions and\napplication of deep functions.  These tools generalize beyond values and\nfunctions, via the @DeepArrow@ subclass of the @Arrow@ type class.\n\nFor more information see:\n\n* The project wiki page <http://haskell.org/haskellwiki/DeepArrow>\n\n* Application of deep arrows for composable interfaces in the TV library:\n<http://haskell.org/haskellwiki/TV>\n\n* The motivating idea and paper \"Tangible Functional Programming\":\n<http://conal.net/papers/Eros>\n\nThis page and the module documentation pages have links to colorized\nsource code and to wiki pages where you can read and contribute /user\ncomments/.  Enjoy!\n\nThe primary module is \"Control.Arrow.DeepArrow\".  Examples in\n\"Control.Arrow.DeepArrow.Examples\".\n\n/Note/: Many of the type signatures use infix type operators (as in\n@a~>b@), a recent extension to GHC.  In reading the documentation and\ncode, be aware that infix operators bind more tightly than @->@.\n\n&#169; 2007-2012 by Conal Elliott (<http://conal.net>); BSD3 license.";
      buildType = "Simple";
    };
    components = {
      "DeepArrow" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.TypeCompose)
          (hsPkgs.haskell-src)
        ];
      };
    };
  }