{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "roundRobin";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "winterland1989@gmail.com";
        author = "winterland1989";
        homepage = "";
        url = "";
        synopsis = "A simple round-robin data type";
        description = "This package provide a simple data type wrap a round-robin table. so you can select resources(host, connection...) using round-robin fashion.";
        buildType = "Simple";
      };
      components = {
        roundRobin = {
          depends  = [ hsPkgs.base ];
        };
      };
    }