{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "rest-types";
          version = "1.14.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "code@silk.co";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Silk Rest Framework Types";
        description = "Silk Rest Framework Types";
        buildType = "Simple";
      };
      components = {
        rest-types = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.base-compat
            hsPkgs.case-insensitive
            hsPkgs.generic-aeson
            hsPkgs.hxt
            hsPkgs.json-schema
            hsPkgs.generic-xmlpickler
            hsPkgs.rest-stringmap
            hsPkgs.text
            hsPkgs.uuid
          ];
        };
      };
    }