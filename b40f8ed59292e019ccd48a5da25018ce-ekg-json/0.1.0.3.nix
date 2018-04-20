{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ekg-json";
          version = "0.1.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "johan.tibell@gmail.com";
        author = "Johan Tibell";
        homepage = "https://github.com/tibbe/ekg-json";
        url = "";
        synopsis = "JSON encoding of ekg metrics";
        description = "Encodes ekg metrics as JSON, using the same encoding as used by the\nekg package, thus allowing ekg metrics to be served by other HTTP\nservers than the one used by the ekg package.";
        buildType = "Simple";
      };
      components = {
        ekg-json = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.ekg-core
            hsPkgs.text
            hsPkgs.unordered-containers
          ];
        };
      };
    }