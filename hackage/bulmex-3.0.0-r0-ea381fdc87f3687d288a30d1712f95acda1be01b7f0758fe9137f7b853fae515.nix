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
      specVersion = "1.12";
      identifier = { name = "bulmex"; version = "3.0.0"; };
      license = "MIT";
      copyright = "2018 Jappie Klooster";
      maintainer = "jappieklooster@hotmail.com";
      author = "Jappie Klooster";
      homepage = "https://github.com/jappeace/bulmex#readme";
      url = "";
      synopsis = "Reflex infused with bulma (css)";
      description = "Reflex infused with bulma, [Implements](https://hackage.haskell.org/package/bulmex/docs/Reflex-Bulmex-Modal.html) the [modal](https://bulma.io/documentation/components/modal/) for example. Also has helper functions for common tasks. such as making server side rendering easier. See related [blogpost](https://jappieklooster.nl/reflex-server-side-html-rendering.html).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
          (hsPkgs."jsaddle" or (errorHandler.buildDepError "jsaddle"))
          (hsPkgs."jsaddle-dom" or (errorHandler.buildDepError "jsaddle-dom"))
          (hsPkgs."keycode" or (errorHandler.buildDepError "keycode"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."reflex" or (errorHandler.buildDepError "reflex"))
          (hsPkgs."reflex-dom-core" or (errorHandler.buildDepError "reflex-dom-core"))
          (hsPkgs."reflex-dom-helpers" or (errorHandler.buildDepError "reflex-dom-helpers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."witherable" or (errorHandler.buildDepError "witherable"))
          ];
        buildable = true;
        };
      tests = {
        "unit" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
            (hsPkgs."jsaddle" or (errorHandler.buildDepError "jsaddle"))
            (hsPkgs."jsaddle-dom" or (errorHandler.buildDepError "jsaddle-dom"))
            (hsPkgs."keycode" or (errorHandler.buildDepError "keycode"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."reflex" or (errorHandler.buildDepError "reflex"))
            (hsPkgs."reflex-dom-core" or (errorHandler.buildDepError "reflex-dom-core"))
            (hsPkgs."reflex-dom-helpers" or (errorHandler.buildDepError "reflex-dom-helpers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."witherable" or (errorHandler.buildDepError "witherable"))
            ];
          buildable = true;
          };
        };
      };
    }