{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hoodle-publish";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ian-Woo Kim <ianwookim@gmail.com>";
        author = "Ian-Woo Kim";
        homepage = "http://ianwookim.org/hoodle";
        url = "";
        synopsis = "publish hoodle files as a static web site";
        description = "This package provides a simple tool hoodle-publish which make a static web site from a directory containing hoodle files";
        buildType = "Simple";
      };
      components = {
        hoodle-publish = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.cairo
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.directory-tree
            hsPkgs.filepath
            hsPkgs.gtk3
            hsPkgs.HTTP
            hsPkgs.io-streams
            hsPkgs.lens
            hsPkgs.mtl
            hsPkgs.network-uri
            hsPkgs.pdf-toolbox-core
            hsPkgs.pdf-toolbox-document
            hsPkgs.process
            hsPkgs.transformers
            hsPkgs.unordered-containers
            hsPkgs.uuid
            hsPkgs.hoodle-parser
            hsPkgs.hoodle-render
            hsPkgs.hoodle-types
          ];
        };
        exes = {
          hoodle-publish = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.directory
              hsPkgs.directory-tree
              hsPkgs.filepath
              hsPkgs.hoodle-publish
              hsPkgs.gtk3
            ];
          };
        };
      };
    }