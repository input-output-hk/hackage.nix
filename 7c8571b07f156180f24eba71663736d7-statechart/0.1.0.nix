{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "statechart";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Tom Hawkins <tomahawkins@gmail.com>";
        author = "Tom Hawkins <tomahawkins@gmail.com>";
        homepage = "http://tomahawkins.org";
        url = "";
        synopsis = "Compiles Rhapsody statecharts to C.";
        description = "TODO";
        buildType = "Simple";
      };
      components = {
        exes = {
          "statechart" = {
            depends  = [
              hsPkgs.base
              hsPkgs.polyparse
            ];
          };
        };
      };
    }