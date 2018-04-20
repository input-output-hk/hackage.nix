{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.4";
        identifier = {
          name = "GeocoderOpenCage";
          version = "0.1.0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "hahn@geoinfo.tuwien.ac.at";
        author = "Juergen Hahn";
        homepage = "https://github.com/juergenhah/Haskell-Geocoder-OpenCage.git";
        url = "";
        synopsis = "Geocoder and Reverse Geocoding Service Wrapper";
        description = "uses the OpenCage REST API to geocode and reverse geocode";
        buildType = "Simple";
      };
      components = {
        GeocoderOpenCage = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.HTTP
            hsPkgs.bytestring
            hsPkgs.aeson
          ];
        };
      };
    }