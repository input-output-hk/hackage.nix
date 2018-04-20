{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hack-handler-simpleserver";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://github.com/snoyberg/hack-handler-simpleserver/tree/master";
        url = "";
        synopsis = "A simplistic HTTP server handler for Hack. (deprecated)";
        description = "This should not be used in a production environment.\nHowever, it's useful for testing.\n0.2.0.2 is equal to 0.2.0.1 but with extended ranges for\nnetwork and web-encodings packages";
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