{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "yesod-fay";
          version = "0.5.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "https://github.com/fpco/yesod-fay";
        url = "";
        synopsis = "Utilities for using the Fay Haskell-to-JS compiler with Yesod.";
        description = "For initial discussion, see <http://www.yesodweb.com/blog/2012/10/yesod-fay-js>. This is a work-in-progress.";
        buildType = "Simple";
      };
      components = {
        yesod-fay = {
          depends  = [
            hsPkgs.base
            hsPkgs.fay
            hsPkgs.fay-text
            hsPkgs.transformers
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.data-default
            hsPkgs.directory
            hsPkgs.text
            hsPkgs.system-fileio
            hsPkgs.system-filepath
            hsPkgs.template-haskell
            hsPkgs.process
            hsPkgs.shakespeare-js
            hsPkgs.shakespeare
            hsPkgs.yesod-core
            hsPkgs.yesod-form
            hsPkgs.yesod-static
            hsPkgs.pureMD5
            hsPkgs.utf8-string
            hsPkgs.monad-loops
          ];
        };
      };
    }