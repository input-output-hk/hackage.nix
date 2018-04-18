{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hfsevents";
          version = "0.1.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "stegeman@gmail.com";
        author = "Luite Stegeman";
        homepage = "http://github.com/luite/hfsevents";
        url = "";
        synopsis = "File/folder watching for OS X";
        description = "";
        buildType = "Simple";
      };
      components = {
        hfsevents = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.unix
            hsPkgs.text
          ];
          libs = [ pkgs.pthread ];
          frameworks = [ pkgs.Cocoa ];
        };
      };
    }