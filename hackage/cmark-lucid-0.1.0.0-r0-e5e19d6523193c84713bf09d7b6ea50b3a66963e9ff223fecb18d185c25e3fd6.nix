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
      identifier = { name = "cmark-lucid"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "yom@artyom.me";
      author = "Artyom";
      homepage = "http://github.com/aelve/cmark-lucid";
      url = "";
      synopsis = "Use cmark with Lucid";
      description = "A package for rendering Markdown (parsed via cmark) to Lucid's HTML.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cmark" or (errorHandler.buildDepError "cmark"))
          (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
          ];
        buildable = true;
        };
      };
    }