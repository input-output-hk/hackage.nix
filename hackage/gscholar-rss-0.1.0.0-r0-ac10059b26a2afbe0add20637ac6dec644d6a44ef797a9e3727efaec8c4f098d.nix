{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = {
        name = "gscholar-rss";
        version = "0.1.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "2018 © Francesco Ariis";
      maintainer = "fa-ml@ariis.it";
      author = "Francesco Ariis";
      homepage = "http://www.ariis.it/static/articles/gscholar-rss/page.html";
      url = "";
      synopsis = "scrapes google scholar, provides RSS feed";
      description = "A simple Google Scholar scraper, providing RSS/Atom\nfeeds. Check homepage for manual and examples.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "gscholar-rss" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.scalpel-core)
            (hsPkgs.feed)
            (hsPkgs.text)
            (hsPkgs.http-conduit)
            (hsPkgs.uri)
          ];
        };
      };
    };
  }