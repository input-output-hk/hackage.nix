{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "avers-api";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "2016 Tomas Carnecky";
        maintainer = "tomas.carnecky@gmail.com";
        author = "Tomas Carnecky";
        homepage = "http://github.com/wereHamster/avers-api";
        url = "";
        synopsis = "Types describing the core and extended Avers APIs";
        description = "Types describing the core and extended Avers APIs";
        buildType = "Simple";
      };
      components = {
        avers-api = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.avers
            hsPkgs.bytestring
            hsPkgs.cookie
            hsPkgs.http-api-data
            hsPkgs.servant
            hsPkgs.text
            hsPkgs.time
            hsPkgs.vector
          ];
        };
      };
    }