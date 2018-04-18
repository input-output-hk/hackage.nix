{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      network-uri = true;
    } // flags;
    in {
      package = {
        specVersion = "1.9.2";
        identifier = {
          name = "alfred";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "paba@di.ku.dk";
        author = "Patrick Bahr";
        homepage = "";
        url = "";
        synopsis = "utility library for Alfred version 2";
        description = "A utility library for writing workflows for Alfred version 2\n(<http://www.alfredapp.com>). Examples can be found at\n<https://github.com/pa-ba/alfred/tree/master/examples>.";
        buildType = "Simple";
      };
      components = {
        alfred = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.xmlgen
            hsPkgs.HTTP
            hsPkgs.hexpat
          ] ++ (if _flags.network-uri
            then [ hsPkgs.network-uri ]
            else [ hsPkgs.network ]);
        };
      };
    }