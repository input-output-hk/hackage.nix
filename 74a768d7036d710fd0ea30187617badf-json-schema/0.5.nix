{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "json-schema";
          version = "0.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "code@silk.co";
        author = "Silk";
        homepage = "";
        url = "";
        synopsis = "Types and type classes for defining JSON schemas.";
        description = "Types and type classes for defining JSON schemas.";
        buildType = "Simple";
      };
      components = {
        "json-schema" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.containers
            hsPkgs.generic-aeson
            hsPkgs.generic-deriving
            hsPkgs.tagged
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.vector
          ];
        };
      };
    }