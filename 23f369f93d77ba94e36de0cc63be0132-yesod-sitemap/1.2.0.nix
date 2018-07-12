{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "yesod-sitemap";
          version = "1.2.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://www.yesodweb.com/";
        url = "";
        synopsis = "Generate XML sitemaps.";
        description = "Generate XML sitemaps.";
        buildType = "Simple";
      };
      components = {
        "yesod-sitemap" = {
          depends  = [
            hsPkgs.base
            hsPkgs.yesod-core
            hsPkgs.time
            hsPkgs.xml-conduit
            hsPkgs.text
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.conduit
            hsPkgs.xml-types
          ];
        };
      };
    }