{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hScraper";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "nishant.gupta291995@google.com, agarwal.ayush9@gmail.com";
        author = "Nishant Gupta, Ayush Agarwal";
        homepage = "";
        url = "";
        synopsis = "A Haskell library to scrape and crawl web-pages";
        description = "";
        buildType = "Simple";
      };
      components = {
        "hScraper" = {
          depends  = [
            hsPkgs.base
            hsPkgs.http-types
            hsPkgs.directory
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.parsec
            hsPkgs.transformers
            hsPkgs.regex-compat
            hsPkgs.HTTP
            hsPkgs.http-conduit
            hsPkgs.process
          ];
        };
      };
    }