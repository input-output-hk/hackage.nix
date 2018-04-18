{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "yesod-json";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://docs.yesodweb.com/";
        url = "";
        synopsis = "Generate content for Yesod using the json-types package.";
        description = "";
        buildType = "Simple";
      };
      components = {
        yesod-json = {
          depends  = [
            hsPkgs.base
            hsPkgs.yesod-core
            hsPkgs.aeson
            hsPkgs.text
            hsPkgs.hamlet
            hsPkgs.vector
            hsPkgs.containers
          ];
        };
      };
    }