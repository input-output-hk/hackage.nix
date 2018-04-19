{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "wai-handler-scgi";
          version = "1.2.0.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://www.yesodweb.com/book/wai";
        url = "";
        synopsis = "Wai handler to SCGI";
        description = "Wai handler to SCGI";
        buildType = "Simple";
      };
      components = {
        wai-handler-scgi = {
          depends  = [
            hsPkgs.base
            hsPkgs.wai
            hsPkgs.wai-extra
            hsPkgs.bytestring
          ];
        };
      };
    }