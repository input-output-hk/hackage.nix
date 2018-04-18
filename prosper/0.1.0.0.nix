{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "prosper";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2015 Matthew Wraith";
        maintainer = "wraithm@gmail.com";
        author = "Matthew Wraith";
        homepage = "https://api.prosper.com";
        url = "";
        synopsis = "Bindings to the Prosper marketplace API";
        description = "";
        buildType = "Simple";
      };
      components = {
        prosper = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.vector
            hsPkgs.aeson
            hsPkgs.cereal
            hsPkgs.io-streams
            hsPkgs.HsOpenSSL
            hsPkgs.http-streams
          ];
        };
      };
    }