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
      identifier = { name = "scotty-hastache"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013-2014 Dan Frumin <difrumin@gmail.com>";
      maintainer = "difrumin@gmail.com";
      author = "Dan Frumin";
      homepage = "https://github.com/scotty-web/scotty-hastache";
      url = "";
      synopsis = "Easy Mustache templating support for Scotty";
      description = "This library provides a small templating DSL extension\nfor Scotty via the `hastache` library.\n\n[Scotty] is a light-weighted Web framework\\/router <http://hackage.haskell.org/package/scotty>\n\n[Hashache] is a Haskell implementation of the Mustache templates: <http://mustache.github.io/>, <http://hackage.haskell.org/package/hastache>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hastache" or (errorHandler.buildDepError "hastache"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."scotty" or (errorHandler.buildDepError "scotty"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          ];
        buildable = true;
        };
      };
    }