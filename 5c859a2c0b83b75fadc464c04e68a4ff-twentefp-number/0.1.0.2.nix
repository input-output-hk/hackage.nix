{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "twentefp-number";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "sebastiaan.la.fleur@gmail.com";
        author = "Christiaan Baaij & Sebastiaan la Fleur";
        homepage = "";
        url = "";
        synopsis = "Lab Assignments Environment at Univeriteit Twente";
        description = "Lab Assignments Environment at Univeriteit Twente";
        buildType = "Simple";
      };
      components = {
        twentefp-number = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
          ];
        };
      };
    }