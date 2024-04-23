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
      identifier = { name = "curly-expander"; version = "0.2.0.2"; };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "p-w@stty.cz";
      author = "Přemysl Šťastný";
      homepage = "https://github.com/stastnypremysl/curly-expander";
      url = "";
      synopsis = "Curly braces (brackets) expanding";
      description = "A library for curly braces (brackets) expanding - similar to bash curly expanding";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "base-case-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."curly-expander" or (errorHandler.buildDepError "curly-expander"))
          ];
          buildable = true;
        };
        "range-case-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."curly-expander" or (errorHandler.buildDepError "curly-expander"))
          ];
          buildable = true;
        };
        "nested-case-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."curly-expander" or (errorHandler.buildDepError "curly-expander"))
          ];
          buildable = true;
        };
      };
    };
  }