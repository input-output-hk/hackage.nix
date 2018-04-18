{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hack-middleware-clientsession";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://github.com/snoyberg/hack-middleware-clientsession/tree/master";
        url = "";
        synopsis = "Middleware for easily keeping session data in client cookies.";
        description = "Uses the clientsession package for automatic encryption,\nhashing, expiring and renewing of sessions stored in\ncookies on the client.";
        buildType = "Simple";
      };
      components = {
        hack-middleware-clientsession = {
          depends  = [
            hsPkgs.base
            hsPkgs.hack
            hsPkgs.clientsession
            hsPkgs.old-locale
            hsPkgs.time
            hsPkgs.predicates
            hsPkgs.web-encodings
          ];
        };
      };
    }