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
      identifier = { name = "latex-svg-hakyll"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "2020 Oleg Grenrus, 2015-2019 Liam O'Connor";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus, Liam O'Connor";
      homepage = "https://github.com/phadej/latex-svg#readme";
      url = "";
      synopsis = "Use actual LaTeX to render formulae inside Hakyll pages";
      description = "This library provides functions to render all math formulae inside\nPandoc-processed Hakyll pages using real LaTeX.\n\nhttps://github.com/liamoc/latex-formulae";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hakyll" or (errorHandler.buildDepError "hakyll"))
          (hsPkgs."latex-svg-image" or (errorHandler.buildDepError "latex-svg-image"))
          (hsPkgs."latex-svg-pandoc" or (errorHandler.buildDepError "latex-svg-pandoc"))
          (hsPkgs."lrucache" or (errorHandler.buildDepError "lrucache"))
          (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
        ];
        buildable = true;
      };
    };
  }