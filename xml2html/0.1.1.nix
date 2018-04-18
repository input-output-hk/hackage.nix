{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "xml2html";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://github.com/snoyberg/xml";
        url = "";
        synopsis = "blaze-html instances for xml-conduit types";
        description = "blaze-html instances for xml-conduit types";
        buildType = "Simple";
      };
      components = {
        xml2html = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.xml-conduit
            hsPkgs.containers
            hsPkgs.blaze-html
          ];
        };
      };
    }