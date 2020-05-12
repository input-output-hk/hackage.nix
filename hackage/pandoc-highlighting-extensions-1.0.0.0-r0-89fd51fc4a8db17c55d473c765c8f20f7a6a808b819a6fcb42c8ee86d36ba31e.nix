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
      specVersion = "2.0";
      identifier = {
        name = "pandoc-highlighting-extensions";
        version = "1.0.0.0";
        };
      license = "MIT";
      copyright = "2018 Typeclass Consulting, LLC";
      maintainer = "Chris Martin, Julie Moronuki";
      author = "Chris Martin";
      homepage = "https://github.com/typeclasses/pandoc-highlighting-ext";
      url = "";
      synopsis = "Syntax highlighting customization for Pandoc";
      description = "This package adapts the @skylighting-modding@ and\n@skylighting-extensions@ packages for use with Pandoc.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
          (hsPkgs."skylighting-core" or (errorHandler.buildDepError "skylighting-core"))
          (hsPkgs."skylighting-extensions" or (errorHandler.buildDepError "skylighting-extensions"))
          (hsPkgs."skylighting-modding" or (errorHandler.buildDepError "skylighting-modding"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }