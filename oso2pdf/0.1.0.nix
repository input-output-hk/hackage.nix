{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "oso2pdf";
          version = "0.1.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "spwhitton@spwhitton.name";
        author = "Sean Whitton";
        homepage = "https://github.com/spwhitton/oso2pdf";
        url = "";
        synopsis = "Better conversion of Oxford Scholarship Online material to PDF";
        description = "Please see README.md when I write it";
        buildType = "Simple";
      };
      components = {
        exes = {
          pandoc-oso2tex = {
            depends  = [
              hsPkgs.base
              hsPkgs.pandoc-types
            ];
          };
          oso2pdf = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.optparse-applicative
              hsPkgs.lens
              hsPkgs.process
              hsPkgs.temporary
              hsPkgs.filepath
              hsPkgs.mtl
            ];
          };
        };
      };
    }