{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "DTC";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Daniel Diaz <danieldiaz@asofilak.es>";
        author = "Daniel Diaz";
        homepage = "http://ddiaz.asofilak.es/packages/DTC";
        url = "";
        synopsis = "Data To Class.";
        description = "Transform data declarations to class definitions.\n\nThe way is explained in /Data Declarations to Class Definitions/.\nYou can find these notes in the homepage of the package.";
        buildType = "Simple";
      };
      components = {
        "DTC" = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell-src
          ];
        };
      };
    }