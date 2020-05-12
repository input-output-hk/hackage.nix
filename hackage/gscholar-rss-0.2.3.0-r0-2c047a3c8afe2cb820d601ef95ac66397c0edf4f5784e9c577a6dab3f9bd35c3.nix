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
      identifier = { name = "gscholar-rss"; version = "0.2.3.0"; };
      license = "GPL-3.0-only";
      copyright = "2018-2019 © Francesco Ariis";
      maintainer = "fa-ml@ariis.it";
      author = "Francesco Ariis";
      homepage = "http://www.ariis.it/static/articles/gscholar-rss/page.html";
      url = "";
      synopsis = "scrapes google scholar, provides RSS feed";
      description = "A simple Google Scholar scraper, providing RSS/Atom\nfeeds. Check <homepage http://ariis.it/static/articles/gscholar-rss/page.html>\nfor manual and examples.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "gscholar-rss" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."scalpel-core" or (errorHandler.buildDepError "scalpel-core"))
            (hsPkgs."feed" or (errorHandler.buildDepError "feed"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."uri" or (errorHandler.buildDepError "uri"))
            ];
          buildable = true;
          };
        };
      };
    }