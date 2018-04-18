{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "yesod-sitemap";
          version = "1.4.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://www.yesodweb.com/";
        url = "";
        synopsis = "Generate XML sitemaps.";
        description = "API docs and the README are available at <http://www.stackage.org/package/yesod-sitemap>";
        buildType = "Simple";
      };
      components = {
        yesod-sitemap = {
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