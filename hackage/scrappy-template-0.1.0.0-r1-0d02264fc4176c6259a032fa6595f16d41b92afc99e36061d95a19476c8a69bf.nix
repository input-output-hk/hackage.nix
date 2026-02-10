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
      specVersion = "2.4";
      identifier = { name = "scrappy-template"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "galen.sprout@gmail.com";
      author = "Galen Sprout";
      homepage = "https://github.com/Ace-Interview-Prep/scrappy";
      url = "";
      synopsis = "html pattern matching library and high-level interface concurrent requests lib for webscraping";
      description = "Scrappy is meant to be a fully expressive library for all aspects of webscraping.\nIn this sense it is meant to be as undetectable as using Selenium but with a design\nspecifically for webscraping (where Selenium was never intended for webscraping nor do\nit's maintainers seek to provide features that allow for more expressive scraping if it\nwould not help testing). The Elem.* modules provide a wide range of expressive pattern matching\nfunctions while adding no more complexity in needing to learn this library over parsing.\n\nIn addition to expressive patterns to fit your specific patterns you hope to scrape, scrappy\nprovides helper functions for complex control flows such as running multiple different\nparser-scrapers on respective sites based on a rotating ConcurrentStream when users have many\ntarget sites that they can rotate working on to not overload a given site and thus avoid detection\n\nFor simpler control flows such as scraping a large number of pages on a single site, scrappy currently\nprovides functions like getHtml, which not only is a super simple interface to http requests,\nbut a persistent function that gurantees retrieval of the HTML document to be scraped\n\nThis package is labelled as uncurated, and so suggestions are very much welcome and this package is\nexpected to grow based on feedback. The primary focus will be on running Javascript to allow for greater\naccess to information on sites";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."modern-uri" or (errorHandler.buildDepError "modern-uri"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."parser-combinators" or (errorHandler.buildDepError "parser-combinators"))
          (hsPkgs."scrappy-core" or (errorHandler.buildDepError "scrappy-core"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }