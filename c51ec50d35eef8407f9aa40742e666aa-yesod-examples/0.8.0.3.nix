{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "yesod-examples";
          version = "0.8.0.3";
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
            ];
          };
          yesod-file-echo = {
            depends  = [ hsPkgs.text ];
          };
          yesod-pretty-yaml = {
            depends  = [
              hsPkgs.data-object-yaml
              hsPkgs.data-object
              hsPkgs.bytestring
            ];
          };
          yesod-i18n = {};
          yesod-session = {};
          yesod-widgets = {
            depends  = [
              hsPkgs.yesod-form
            ];
          };
          yesod-generalized-hamlet = {};
          yesod-form = {};
          yesod-persistent-synopsis = {
            depends  = [
              hsPkgs.transformers
              hsPkgs.persistent-sqlite
              hsPkgs.persistent-template
            ];
          };
          yesod-hamlet-synopsis = {
            depends  = [ hsPkgs.hamlet ];
          };
          yesod-chat = {
            depends  = [ hsPkgs.stm ];
          };
        };
      };
    }