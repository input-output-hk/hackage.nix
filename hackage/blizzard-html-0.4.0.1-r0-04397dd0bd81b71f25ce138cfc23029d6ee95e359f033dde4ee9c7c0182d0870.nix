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
      identifier = { name = "blizzard-html"; version = "0.4.0.1"; };
      license = "MIT";
      copyright = "2021 Joshua Obritsch";
      maintainer = "Joshua Obritsch <joshua@obritsch.com>";
      author = "Joshua Obritsch";
      homepage = "https://github.com/joshua-obritsch/blizzard-html";
      url = "";
      synopsis = "An HTML renderer for Haskell";
      description = "An HTML renderer for the Haskell programming\nlanguage. It functions mostly as a wrapper\nfor blaze-html. The syntax was inspired by Elm.\nA CSS solution is currently being experimented\nwith. For now, I'd recommend using this with\nTailwind CSS.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }