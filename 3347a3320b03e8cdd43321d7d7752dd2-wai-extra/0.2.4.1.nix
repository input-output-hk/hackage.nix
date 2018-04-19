{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "wai-extra";
          version = "0.2.4.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "http://github.com/snoyberg/wai-extra";
        url = "";
        synopsis = "Provides some basic WAI handlers and middleware.";
        description = "The goal here is to provide common features without many dependencies.";
        buildType = "Simple";
      };
      components = {
        wai-extra = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.wai
            hsPkgs.old-locale
            hsPkgs.time
            hsPkgs.network
            hsPkgs.directory
            hsPkgs.utf8-string
            hsPkgs.zlib-bindings
          ];
        };
      };
    }