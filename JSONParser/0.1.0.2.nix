{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "JSONParser";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "hawk.alan@gmail.com";
        author = "Alan Hawkins";
        homepage = "";
        url = "";
        synopsis = "Parse JSON";
        description = "";
        buildType = "Simple";
      };
      components = {
        JSONParser = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
          ];
        };
      };
    }