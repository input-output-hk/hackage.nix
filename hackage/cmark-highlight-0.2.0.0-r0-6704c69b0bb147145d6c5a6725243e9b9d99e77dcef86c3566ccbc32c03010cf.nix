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
      identifier = { name = "cmark-highlight"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "yom@artyom.me";
      author = "Artyom";
      homepage = "http://github.com/aelve/cmark-highlight";
      url = "";
      synopsis = "Code highlighting for cmark";
      description = "Code highlighting for cmark";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."cmark" or (errorHandler.buildDepError "cmark"))
          (hsPkgs."highlighting-kate" or (errorHandler.buildDepError "highlighting-kate"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }