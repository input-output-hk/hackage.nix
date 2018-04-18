{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "feed";
          version = "1.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Adam Bergmark <adam@bergmark.nl>";
        author = "Sigbjorn Finne <sof@forkIO.com>";
        homepage = "https://github.com/bergmark/feed";
        url = "";
        synopsis = "Interfacing with RSS (v 0.9x, 2.x, 1.0) + Atom feeds.";
        description = "Interfacing with RSS (v 0.9x, 2.x, 1.0) + Atom feeds.\n\nTo help working with the multiple feed formats we've\nended up with, this set of modules provides parsers,\npretty printers and some utility code for querying\nand just generally working with a concrete representation\nof feeds in Haskell.\n\nSee here for an example of how to create an Atom feed:\n<https://github.com/bergmark/feed/blob/master/tests/Example/CreateAtom.hs>\n\nFor basic reading and editing of feeds, consult\nthe documentation of the Text.Feed.* hierarchy.";
        buildType = "Simple";
      };
      components = {
        feed = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-compat
            hsPkgs.bytestring
            hsPkgs.old-locale
            hsPkgs.old-time
            hsPkgs.safe
            hsPkgs.text
            hsPkgs.time
            hsPkgs.time-locale-compat
            hsPkgs.utf8-string
            hsPkgs.xml-types
            hsPkgs.xml-conduit
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.base-compat
              hsPkgs.feed
              hsPkgs.old-locale
              hsPkgs.old-time
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.text
              hsPkgs.time
              hsPkgs.time-locale-compat
              hsPkgs.utf8-string
              hsPkgs.xml-types
              hsPkgs.xml-conduit
            ];
          };
        };
      };
    }