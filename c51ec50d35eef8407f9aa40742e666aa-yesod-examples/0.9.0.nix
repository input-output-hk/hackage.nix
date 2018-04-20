{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      ghc7 = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "yesod-examples";
          version = "0.9.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "http://www.yesodweb.com/";
        url = "";
        synopsis = "Example programs using the Yesod Web Framework.";
        description = "These are the same examples and tutorials found on the documentation site.";
        buildType = "Simple";
      };
      components = {
        exes = {
          yesod-blog = {
            depends  = [
              hsPkgs.base
              hsPkgs.yesod
            ];
          };
          yesod-ajax = {
            depends  = [
              hsPkgs.yesod-static
              hsPkgs.blaze-html
              hsPkgs.yesod
            ];
          };
          yesod-file-echo = {
            depends  = [
              hsPkgs.text
              hsPkgs.yesod
            ];
          };
          yesod-pretty-yaml = {
            depends  = [
              hsPkgs.data-object-yaml
              hsPkgs.data-object
              hsPkgs.bytestring
              hsPkgs.yesod
            ];
          };
          yesod-i18n = {};
          yesod-session = {};
          yesod-form = {};
          yesod-persistent-synopsis = {
            depends  = [
              hsPkgs.transformers
              hsPkgs.persistent-sqlite
              hsPkgs.persistent-template
            ];
            libs = [ pkgs.sqlite3 ];
          };
          yesod-hamlet-synopsis = {
            depends  = [
              hsPkgs.hamlet
              hsPkgs.yesod-core
            ];
          };
          yesod-chat = {
            depends  = [ hsPkgs.stm ];
          };
        };
      };
    }