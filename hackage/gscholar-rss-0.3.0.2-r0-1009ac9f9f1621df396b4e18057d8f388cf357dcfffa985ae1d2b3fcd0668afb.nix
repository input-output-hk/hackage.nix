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
      identifier = { name = "gscholar-rss"; version = "0.3.0.2"; };
      license = "GPL-3.0-only";
      copyright = "2018-2020 © Francesco Ariis";
      maintainer = "fa-ml@ariis.it";
      author = "Francesco Ariis";
      homepage = "http://www.ariis.it/static/articles/gscholar-rss/page.html";
      url = "";
      synopsis = "scrapes google scholar, provides RSS feed";
      description = "A simple Google Scholar scraper, providing RSS/Atom\nfeeds. Check <http://ariis.it/static/articles/gscholar-rss/page.html homepage>\nfor manual, binaries and examples.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "gscholar-rss" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."feed" or (errorHandler.buildDepError "feed"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."scalpel-core" or (errorHandler.buildDepError "scalpel-core"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."uri" or (errorHandler.buildDepError "uri"))
            (hsPkgs."xml-types" or (errorHandler.buildDepError "xml-types"))
            ];
          buildable = true;
          };
        };
      };
    }