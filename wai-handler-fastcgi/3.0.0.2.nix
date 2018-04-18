{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "wai-handler-fastcgi";
          version = "3.0.0.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://www.yesodweb.com/book/web-application-interface";
        url = "";
        synopsis = "Wai handler to fastcgi";
        description = "API docs and the README are available at <http://www.stackage.org/package/wai-handler-fastcgi>.";
        buildType = "Configure";
      };
      components = {
        wai-handler-fastcgi = {
          depends  = [
            hsPkgs.base
            hsPkgs.wai
            hsPkgs.wai-extra
            hsPkgs.bytestring
          ];
          libs = [ pkgs.fcgi ];
        };
      };
    }