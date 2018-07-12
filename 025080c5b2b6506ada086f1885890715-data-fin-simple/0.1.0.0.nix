{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "data-fin-simple";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "seagull.kamome@gmail.com";
        author = "Hiroki Hattori";
        homepage = "https://github.com/seagull-kamome/data-fin-simple";
        url = "";
        synopsis = "Simple integral finite set";
        description = "Typesafe finite unsigned-integral";
        buildType = "Simple";
      };
      components = {
        "data-fin-simple" = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          "doctest" = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
        };
      };
    }