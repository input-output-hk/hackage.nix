{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "yesod-default";
          version = "0.6.1";
        };
        license = "BSD-3-Clause";
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
            hsPkgs.unordered-containers
          ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix;
        };
      };
    }