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
      identifier = {
        name = "skylighting-format-context";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "© Albert Krewinkel, John MacFarlane";
      maintainer = "albert@tarleb.com";
      author = "Albert Krewinkel";
      homepage = "https://github.com/jgm/skylighting";
      url = "";
      synopsis = "ConTeXt formatter for skylighting syntax highlighting\nlibrary";
      description = "This module allows tokens produced by skylighting-core\nto be rendered as ConTeXt commands.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."skylighting-core" or (errorHandler.buildDepError "skylighting-core"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
    };
  }