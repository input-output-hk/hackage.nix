{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "piet";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008, Stephan Friedrichs";
        maintainer = "Stephan Friedrichs (deduktionstheorem at web dot de)";
        author = "Stephan Friedrichs";
        homepage = "";
        url = "";
        synopsis = "A Piet interpreter";
        description = "An interpreter for the Piet programming language,\nsee <http://www.dangermouse.net/esoteric/piet.html>.";
        buildType = "Custom";
      };
      components = {
        "piet" = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.Imlib
            hsPkgs.mtl
          ];
        };
        exes = { "piet" = {}; };
      };
    }