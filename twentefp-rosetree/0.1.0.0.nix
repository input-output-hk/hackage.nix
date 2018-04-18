{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "twentefp-rosetree";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "sebastiaan.la.fleur@gmail.com";
        author = "Sebastiaan la Fleur";
        homepage = "";
        url = "";
        synopsis = "RoseTree type and show functions for lab assignment of University of Twente.";
        description = "";
        buildType = "Simple";
      };
      components = {
        twentefp-rosetree = {
          depends  = [
            hsPkgs.base
            hsPkgs.twentefp-number
            hsPkgs.twentefp-eventloop-graphics
          ];
        };
      };
    }