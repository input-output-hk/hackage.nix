{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "classy-influxdb-simple";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Sean Chalmers";
        maintainer = "sclhiannan@gmail.com.au";
        author = "Sean Chalmers";
        homepage = "https://github.com/mankyKitty/classy-influxdb-simple#readme";
        url = "";
        synopsis = "Super simple InfluxDB package in Classy-MTL style";
        description = "";
        buildType = "Simple";
      };
      components = {
        classy-influxdb-simple = {
          depends  = [
            hsPkgs.base
            hsPkgs.wreq
            hsPkgs.lens
            hsPkgs.aeson
            hsPkgs.mtl
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.async-io-either
            hsPkgs.vector
          ];
        };
      };
    }