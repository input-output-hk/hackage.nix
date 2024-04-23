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
      specVersion = "3.0";
      identifier = { name = "blizzard-html"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2021 Joshua Obritsch";
      maintainer = "Joshua Obritsch <joshua@obritsch.com>";
      author = "Joshua Obritsch";
      homepage = "https://github.com/joshua-obritsch/blizzard-html";
      url = "";
      synopsis = "An HTML and CSS renderer for Haskell";
      description = "An HTML and CSS renderer for the Haskell\nprogramming language. It functions mostly\nas a wrapper for blaze-html and clay. The\nsyntax was inspired by Elm and elm-css.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."clay" or (errorHandler.buildDepError "clay"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }