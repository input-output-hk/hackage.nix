{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      example = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "helics-wai";
          version = "0.4.0";
        };
        license = "MIT";
        copyright = "(c) 2014 Hirotomo Moriwaki";
        maintainer = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
        author = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
        homepage = "https://github.com/philopon/helics";
        url = "";
        synopsis = "New Relic® agent SDK wrapper for wai.";
        description = "New Relic® agent SDK wrapper for wai.\n\nPlease read example: <https://github.com/philopon/helics/blob/master/helics-wai/example.hs>.";
        buildType = "Simple";
      };
      components = {
        helics-wai = {
          depends  = [
            hsPkgs.base
            hsPkgs.wai
            hsPkgs.vault
            hsPkgs.helics
            hsPkgs.data-default-class
            hsPkgs.bytestring
          ];
        };
        exes = {
          helics-wai-example = {
            depends  = pkgs.lib.optionals _flags.example [
              hsPkgs.base
              hsPkgs.wai
              hsPkgs.helics-wai
              hsPkgs.warp
              hsPkgs.helics
              hsPkgs.vault
              hsPkgs.http-types
              hsPkgs.bytestring
            ];
          };
        };
      };
    }