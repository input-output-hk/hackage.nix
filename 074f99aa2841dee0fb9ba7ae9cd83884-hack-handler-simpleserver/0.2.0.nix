{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hack-handler-simpleserver";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://github.com/snoyberg/hack-handler-simpleserver/tree/master";
        url = "";
        synopsis = "A simplistic HTTP server handler for Hack.";
        description = "This should not be used in a production environment.\nHowever, it's useful for testing.";
        buildType = "Simple";
      };
      components = {
        hack-handler-simpleserver = {
          depends  = [
            hsPkgs.base
            hsPkgs.network
            hsPkgs.hack
            hsPkgs.bytestring
            hsPkgs.web-encodings
            hsPkgs.failure
          ];
        };
      };
    }