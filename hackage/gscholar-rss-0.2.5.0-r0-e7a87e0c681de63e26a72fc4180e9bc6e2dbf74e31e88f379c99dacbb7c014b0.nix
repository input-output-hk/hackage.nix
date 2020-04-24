{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "gscholar-rss"; version = "0.2.5.0"; };
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
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."feed" or ((hsPkgs.pkgs-errors).buildDepError "feed"))
            (hsPkgs."http-conduit" or ((hsPkgs.pkgs-errors).buildDepError "http-conduit"))
            (hsPkgs."scalpel-core" or ((hsPkgs.pkgs-errors).buildDepError "scalpel-core"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."uri" or ((hsPkgs.pkgs-errors).buildDepError "uri"))
            (hsPkgs."xml-types" or ((hsPkgs.pkgs-errors).buildDepError "xml-types"))
            ];
          buildable = true;
          };
        };
      };
    }