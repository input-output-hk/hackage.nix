{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hack-frontend-monadcgi";
          version = "0.0.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "";
        url = "";
        synopsis = "Allows programs written against MonadCGI to run with any hack handler. (deprecated)";
        description = "";
        buildType = "Simple";
      };
      components = {
        hack-frontend-monadcgi = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.cgi
            hsPkgs.hack
          ];
        };
      };
    }