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
      identifier = { name = "scalpel"; version = "0.5.1"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "willcoster@gmail.com";
      author = "Will Coster";
      homepage = "https://github.com/fimad/scalpel";
      url = "";
      synopsis = "A high level web scraping library for Haskell.";
      description = "Scalpel is a web scraping library inspired by libraries like Parsec and\nPerl's Web::Scraper Scalpel builds on top of TagSoup to provide a\ndeclarative and monadic interface.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."scalpel-core" or (errorHandler.buildDepError "scalpel-core"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."curl" or (errorHandler.buildDepError "curl"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }