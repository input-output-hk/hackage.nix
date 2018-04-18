{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "yesod-examples";
          version = "0.5.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "http://docs.yesodweb.com/";
        url = "";
        synopsis = "Example programs using the Yesod Web Framework.";
        description = "These are the same examples and tutorials found on the documentation site.";
        buildType = "Simple";
      };
      components = {
        exes = {
          helloworld = {
            depends  = [
              hsPkgs.base
              hsPkgs.yesod
            ];
          };
          blog = {};
          ajax = {};
          file-echo = {};
          pretty-yaml = {
            depends  = [
              hsPkgs.data-object-yaml
              hsPkgs.data-object
              hsPkgs.bytestring
            ];
          };
          i18n = {};
          session = {};
          widgets = {};
          form = {};
          mkToForm = {
            depends  = [ hsPkgs.time ];
          };
          persistent-synopsis = {
            depends  = [
              hsPkgs.transformers
              hsPkgs.persistent-sqlite
            ];
          };
          hamlet-synopsis = {
            depends  = [ hsPkgs.hamlet ];
          };
        };
      };
    }