{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      network-uri = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "yesod-form";
          version = "1.4.5";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://www.yesodweb.com/";
        url = "";
        synopsis = "Form handling support for Yesod Web Framework";
        description = "API docs and the README are available at <http://www.stackage.org/package/yesod-form>";
        buildType = "Simple";
      };
      components = {
        yesod-form = {
          depends  = [
            hsPkgs.base
            hsPkgs.yesod-core
            hsPkgs.yesod-persistent
            hsPkgs.time
            hsPkgs.shakespeare
            hsPkgs.persistent
            hsPkgs.template-haskell
            hsPkgs.transformers
            hsPkgs.data-default
            hsPkgs.xss-sanitize
            hsPkgs.blaze-builder
            hsPkgs.email-validate
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.wai
            hsPkgs.containers
            hsPkgs.blaze-html
            hsPkgs.blaze-markup
            hsPkgs.attoparsec
            hsPkgs.byteable
            hsPkgs.aeson
            hsPkgs.resourcet
            hsPkgs.semigroups
          ] ++ (if _flags.network-uri
            then [ hsPkgs.network-uri ]
            else [ hsPkgs.network ]);
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.yesod-form
              hsPkgs.time
              hsPkgs.hspec
              hsPkgs.text
            ];
          };
        };
      };
    }