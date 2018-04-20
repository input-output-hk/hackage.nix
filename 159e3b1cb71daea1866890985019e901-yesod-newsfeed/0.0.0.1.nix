{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "yesod-newsfeed";
          version = "0.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Patrick Brisbin <pbrisbin@gmail.com>";
        author = "Michael Snoyman, Patrick Brisbin";
        homepage = "http://docs.yesodweb.com/";
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
            hsPkgs.bytestring
          ];
        };
      };
    }