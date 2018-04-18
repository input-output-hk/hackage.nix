{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "queryparser-demo";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "heli@uber.com";
        author = "Heli Wang, David Thomas, Matt Halverson";
        homepage = "";
        url = "";
        synopsis = "Demo package containing queryparser examples";
        description = "Library containing sample queryparser calls, for user exploration and\nplaygrounding.";
        buildType = "Simple";
      };
      components = {
        queryparser-demo = {
          depends  = [
            hsPkgs.base
            hsPkgs.queryparser
            hsPkgs.queryparser-vertica
            hsPkgs.unordered-containers
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.pretty
          ];
        };
      };
    }