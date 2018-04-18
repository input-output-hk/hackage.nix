{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "wai-conduit";
          version = "3.0.0.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "https://github.com/yesodweb/wai";
        url = "";
        synopsis = "conduit wrappers for WAI";
        description = "API docs and the README are available at <http://www.stackage.org/package/wai-conduit>.";
        buildType = "Simple";
      };
      components = {
        wai-conduit = {
          depends  = [
            hsPkgs.base
            hsPkgs.wai
            hsPkgs.conduit
            hsPkgs.transformers
            hsPkgs.bytestring
            hsPkgs.http-types
            hsPkgs.blaze-builder
          ];
        };
      };
    }