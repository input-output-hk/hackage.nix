{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "jcdecaux-vls";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "Copyright 2013 Antoine Hérault";
        maintainer = "antoine.herault@gmail.com";
        author = "Antoine Hérault";
        homepage = "http://github.com/Herzult/jcdecaux-vls";
        url = "";
        synopsis = "JCDecaux self-service bicycles API client";
        description = "The JCDecaux self-service bicycles API provides access to real-time\ninformations on the stations & contracts of the service.";
        buildType = "Simple";
      };
      components = {
        jcdecaux-vls = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.http-conduit
            hsPkgs.transformers
            hsPkgs.aeson
          ];
        };
      };
    }