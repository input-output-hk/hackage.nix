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
      identifier = { name = "blaze-htmx"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Tobias Brandt";
      maintainer = "tobbra91@gmail.com";
      author = "Tobias Brandt";
      homepage = "https://github.com/TobiasB91/blaze-htmx";
      url = "";
      synopsis = "Blaze integration of the htmx library";
      description = "Blaze integration of the htmx library including WS and SSE extensions";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
        ];
        buildable = true;
      };
      tests = {
        "main" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
            (hsPkgs."blaze-htmx" or (errorHandler.buildDepError "blaze-htmx"))
          ];
          buildable = true;
        };
      };
    };
  }