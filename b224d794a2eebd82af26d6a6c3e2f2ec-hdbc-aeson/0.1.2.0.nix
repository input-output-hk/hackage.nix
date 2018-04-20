{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hdbc-aeson";
          version = "0.1.2.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "dhchoi@gmail.com";
        author = "Daniel Choi";
        homepage = "https://github.com/danchoi/hdbc-aeson";
        url = "";
        synopsis = "Deserialize from HDBC rows to FromJSON instances";
        description = "Deserialize from HDBC rows to FromJSON instances";
        buildType = "Simple";
      };
      components = {
        hdbc-aeson = {
          depends  = [
            hsPkgs.base
            hsPkgs.HDBC
            hsPkgs.text
            hsPkgs.aeson
            hsPkgs.convertible
            hsPkgs.unordered-containers
            hsPkgs.scientific
            hsPkgs.vector
          ];
        };
      };
    }