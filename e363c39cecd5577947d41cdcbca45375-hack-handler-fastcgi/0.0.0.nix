{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hack-handler-fastcgi";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://github.com/snoyberg/hack-handler-fastcgi/tree/master";
        url = "";
        synopsis = "Hack handler direct to fastcgi";
        description = "";
        buildType = "Simple";
      };
      components = {
        hack-handler-fastcgi = {
          depends  = [
            hsPkgs.base
            hsPkgs.hack
            hsPkgs.bytestring
            hsPkgs.hack-handler-cgi
          ];
          libs = [ pkgs.fcgi ];
        };
      };
    }