{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "serviette";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Sasa Bogicevic";
        maintainer = "brutallesale@gmail.com";
        author = "Sasa Bogicevic";
        homepage = "https://github.com/v0d1ch/serviette#readme";
        url = "";
        synopsis = "JSON to Sql raw string or db result in json format";
        description = "Use json to query the database and receive results";
        buildType = "Simple";
      };
      components = {
        serviette = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.generic-deriving
          ];
        };
      };
    }