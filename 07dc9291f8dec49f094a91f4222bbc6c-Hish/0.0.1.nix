{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.12";
        identifier = {
          name = "Hish";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jaiyalas@gmail.com";
        author = "Yun-Yan Chi";
        homepage = "https://github.com/jaiyalas/Hish";
        url = "";
        synopsis = "";
        description = "Prompt program for Fish shell written in Haskell";
        buildType = "Simple";
      };
      components = {
        "Hish" = {
          depends  = [
            hsPkgs.base
            hsPkgs.MissingH
            hsPkgs.process
          ];
        };
        exes = {
          "hish" = {
            depends  = [
              hsPkgs.base
              hsPkgs.MissingH
              hsPkgs.process
            ];
          };
        };
      };
    }