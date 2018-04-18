{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "yesod-default";
          version = "1.1.3.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Patrick Brisbin <pbrisbin@gmail.com>";
        author = "Patrick Brisbin";
        homepage = "http://www.yesodweb.com/";
        url = "";
        synopsis = "Default config and main functions for your yesod application";
        description = "Convenient wrappers for your the configuration and\nexecution of your yesod application";
        buildType = "Simple";
      };
      components = {
        yesod-default = {
          depends  = [
            hsPkgs.base
            hsPkgs.yesod-core
            hsPkgs.warp
            hsPkgs.wai
            hsPkgs.wai-extra
            hsPkgs.bytestring
            hsPkgs.transformers
            hsPkgs.text
            hsPkgs.directory
            hsPkgs.shakespeare-css
            hsPkgs.shakespeare-js
            hsPkgs.template-haskell
            hsPkgs.yaml
            hsPkgs.network-conduit
            hsPkgs.unordered-containers
            hsPkgs.hamlet
            hsPkgs.data-default
            hsPkgs.safe
          ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix;
        };
      };
    }