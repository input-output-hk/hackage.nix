{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "yesod-form";
          version = "0.3.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://www.yesodweb.com/";
        url = "";
        synopsis = "Form handling support for Yesod Web Framework";
        description = "Form handling support for Yesod Web Framework";
        buildType = "Simple";
      };
      components = {
        yesod-form = {
          depends  = [
            hsPkgs.base
            hsPkgs.yesod-core
            hsPkgs.time
            hsPkgs.hamlet
            hsPkgs.shakespeare-css
            hsPkgs.shakespeare-js
            hsPkgs.persistent
            hsPkgs.yesod-persistent
            hsPkgs.template-haskell
            hsPkgs.transformers
            hsPkgs.data-default
            hsPkgs.xss-sanitize
            hsPkgs.blaze-builder
            hsPkgs.network
            hsPkgs.email-validate
            hsPkgs.blaze-html
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.wai
            hsPkgs.containers
          ];
        };
      };
    }