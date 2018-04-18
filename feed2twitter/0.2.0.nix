{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "feed2twitter";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Tom Lokhorst <tom@lokhorst.eu>";
        author = "Tom Lokhorst";
        homepage = "http://github.com/tomlokhorst/feed2twitter";
        url = "";
        synopsis = "Send posts from a feed to Twitter";
        description = "Reads feeds and tweets each post to a Twitter account.\nThis is both a library and a simple executable build on top\nof it.\n\nThe feed is read only once. To keep updating, call this\nprogram/library every few minutes.\nA local cache of earlier tweets is kept in a file to make\nsure no duplicates are sent.\n\nTo build your own program on top of this library use the\n`atom2twitter` or `rss2twitter` functions. If you need\naccess to the complete feed instead of just individual\nindividual items, use the `feed2twitter` function.\n\nSee the `hackage2twitter` program for an example of how to\nuse this library.\n\nThe executable can be used as such:\n\n> \$ feed2twitter http://example.com/feed.rss username password cache-file 50 [--debug-mode]";
        buildType = "Simple";
      };
      components = {
        feed2twitter = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.download-curl
            hsPkgs.feed
            hsPkgs.hs-twitter
          ];
        };
        exes = { feed2twitter = {}; };
      };
    }