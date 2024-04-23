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
      identifier = { name = "hakyll-elm"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2013 Max New";
      maintainer = "maxsnew@gmail.com";
      author = "Max New";
      homepage = "https://github.com/maxsnew/hakyll-elm";
      url = "";
      synopsis = "Hakyll wrapper for the Elm compiler.";
      description = "A wrapper for compiling\nElm (<http://elm-lang.org>) programs to\nhtml/javascript in a Hakyll project.\n\nCurrently supports single-module programs that\nonly import from an Elm runtime that's manually\nincluded.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hakyll" or (errorHandler.buildDepError "hakyll"))
          (hsPkgs."Elm" or (errorHandler.buildDepError "Elm"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
        ];
        buildable = true;
      };
    };
  }