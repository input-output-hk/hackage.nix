{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "cil";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Tom Hawkins <tomahawkins@gmail.com>";
        author = "Tom Hawkins <tomahawkins@gmail.com>";
        homepage = "http://tomahawkins.org";
        url = "";
        synopsis = "An interface to CIL and ACSL through Frama-C.";
        description = "TODO";
        buildType = "Simple";
      };
      components = {
        cil = {
          depends  = [
            hsPkgs.base
            hsPkgs.polyparse
          ];
        };
      };
    }