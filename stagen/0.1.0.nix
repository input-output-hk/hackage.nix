{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "stagen";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Joe Vargas";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Static site generator";
        description = "Low dependency static site generator using markdown";
        buildType = "Simple";
      };
      components = {
        stagen = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.blaze-html
            hsPkgs.data-default
            hsPkgs.directory
            hsPkgs.filemanip
            hsPkgs.lucid
            hsPkgs.markdown
            hsPkgs.mtl
            hsPkgs.optparse-applicative
            hsPkgs.parallel
            hsPkgs.parsec
            hsPkgs.text
          ];
        };
        exes = {
          stagen = {
            depends  = [
              hsPkgs.base
              hsPkgs.stagen
            ];
          };
        };
      };
    }