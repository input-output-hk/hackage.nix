{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "anansi";
          version = "0.3";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "jmillikin@gmail.com";
        author = "John Millikin";
        homepage = "http://john-millikin.com/software/anansi/";
        url = "";
        synopsis = "Simple literate programming preprocessor";
        description = "";
        buildType = "Simple";
      };
      components = {
        anansi = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.monads-tf
            hsPkgs.containers
            hsPkgs.system-filepath
          ];
        };
        exes = {
          anansi = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.monads-tf
              hsPkgs.system-filepath
              hsPkgs.directory
              hsPkgs.anansi
            ];
          };
        };
      };
    }