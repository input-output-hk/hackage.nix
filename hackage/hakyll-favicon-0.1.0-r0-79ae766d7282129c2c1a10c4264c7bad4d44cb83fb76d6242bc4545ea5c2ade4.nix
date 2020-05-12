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
      identifier = { name = "hakyll-favicon"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Elie Genard";
      maintainer = "elaye.github.io@gmail.com";
      author = "Elie Genard";
      homepage = "https://github.com/elaye/hakyll-favicon#README.md";
      url = "";
      synopsis = "";
      description = "Generate favicons for Hakyll websites";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hakyll" or (errorHandler.buildDepError "hakyll"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
        buildable = true;
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hakyll-favicon" or (errorHandler.buildDepError "hakyll-favicon"))
            (hsPkgs."hakyll" or (errorHandler.buildDepError "hakyll"))
            ];
          buildable = true;
          };
        };
      tests = {
        "hakyll-favicon-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hakyll-favicon" or (errorHandler.buildDepError "hakyll-favicon"))
            ];
          buildable = true;
          };
        };
      };
    }