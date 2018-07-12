{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hslogstash";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "bartavelle@gmail.com";
        author = "Simon Marechal";
        homepage = "";
        url = "";
        synopsis = "A library to write structured messages to a logstash server.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "hslogstash" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.network
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.vector
            hsPkgs.unordered-containers
          ];
        };
      };
    }