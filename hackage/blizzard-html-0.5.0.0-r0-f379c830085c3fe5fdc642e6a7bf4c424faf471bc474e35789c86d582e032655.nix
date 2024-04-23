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
      identifier = { name = "blizzard-html"; version = "0.5.0.0"; };
      license = "MIT";
      copyright = "2021 Joshua Obritsch";
      maintainer = "Joshua Obritsch <joshua@obritsch.com>";
      author = "Joshua Obritsch";
      homepage = "https://github.com/joshua-obritsch/blizzard-html";
      url = "";
      synopsis = "An HTML generator for Haskell";
      description = "An HTML generator. Intended to replace the need for a\ntemplating engine in multi-page web applications.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }