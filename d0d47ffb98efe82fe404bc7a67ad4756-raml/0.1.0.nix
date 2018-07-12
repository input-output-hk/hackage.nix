{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "raml";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "Copyright (C) 2015 Fergus Noble";
        maintainer = "Fergus Noble <fergusnoble@gmail.com>";
        author = "Fergus Noble";
        homepage = "https://github.com/fnoble/raml";
        url = "";
        synopsis = "RESTful API Modeling Language (RAML) library for Haskell";
        description = "RESTful API Modeling Language (RAML) library for Haskell";
        buildType = "Simple";
      };
      components = {
        "raml" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.aeson
            hsPkgs.yaml
            hsPkgs.unordered-containers
          ];
        };
      };
    }