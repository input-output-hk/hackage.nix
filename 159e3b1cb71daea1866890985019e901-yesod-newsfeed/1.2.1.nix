{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "yesod-newsfeed";
          version = "1.2.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman, Patrick Brisbin";
        homepage = "http://www.yesodweb.com/";
        url = "";
        synopsis = "Helper functions and data types for producing News feeds.";
        description = "Helper functions and data types for producing News feeds.";
        buildType = "Simple";
      };
      components = {
        yesod-newsfeed = {
          depends  = [
            hsPkgs.base
            hsPkgs.yesod-core
            hsPkgs.time
            hsPkgs.hamlet
            hsPkgs.shakespeare
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.xml-conduit
            hsPkgs.blaze-html
            hsPkgs.blaze-markup
            hsPkgs.containers
          ];
        };
      };
    }