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
      identifier = { name = "scalpel-search"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "© 2020 Francesco Ariis";
      maintainer = "fa-ml@ariis.it";
      author = "Francesco Ariis";
      homepage = "";
      url = "";
      synopsis = "scalpel scrapers for search engines";
      description = "[scalpel](https://hackage.haskell.org/package/scalpel)\nscrapers for DuckDuckGo and Google search engines.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."scalpel-core" or (errorHandler.buildDepError "scalpel-core"))
          (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."uri" or (errorHandler.buildDepError "uri"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."scalpel-core" or (errorHandler.buildDepError "scalpel-core"))
            (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."uri" or (errorHandler.buildDepError "uri"))
            (hsPkgs."scalpel" or (errorHandler.buildDepError "scalpel"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }