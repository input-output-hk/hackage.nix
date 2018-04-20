{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "twentefp-graphs";
          version = "0.1.0.1";
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
        twentefp-graphs = {
          depends  = [
            hsPkgs.base
            hsPkgs.twentefp-eventloop-graphics
          ];
        };
      };
    }