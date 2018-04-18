{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "heist";
          version = "0.5.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "snap@snapframework.com";
        author = "Doug Beardsley, Gregory Collins";
        homepage = "http://snapframework.com/";
        url = "";
        synopsis = "An xhtml templating system";
        description = "An xhtml templating system";
        buildType = "Simple";
      };
      components = {
        heist = {
          depends  = [
            hsPkgs.attoparsec
            hsPkgs.attoparsec-text
            hsPkgs.base
            hsPkgs.blaze-builder
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.directory-tree
            hsPkgs.filepath
            hsPkgs.MonadCatchIO-transformers
            hsPkgs.mtl
            hsPkgs.process
            hsPkgs.random
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.xmlhtml
          ];
        };
      };
    }