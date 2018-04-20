{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "casui";
          version = "0.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Etienne Laurin <etienne@atnnn.com>";
        author = "Etienne Laurin";
        homepage = "http://code.atnnn.com/projects/casui";
        url = "";
        synopsis = "Equation Manipulator";
        description = "Interactive user interface for computer algebra systems";
        buildType = "Simple";
      };
      components = {
        exes = {
          casui = {
            depends  = [
              hsPkgs.base
              hsPkgs.base
              hsPkgs.parsec
              hsPkgs.gtk
              hsPkgs.haskell98
              hsPkgs.mtl
            ];
          };
        };
      };
    }