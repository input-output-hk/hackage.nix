{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "autoexporter";
          version = "0.1.4";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Taylor Fausak";
        author = "";
        homepage = "https://github.com/tfausak/autoexporter#readme";
        url = "";
        synopsis = "Automatically re-export modules.";
        description = "Autoexporter automatically re-exports modules.";
        buildType = "Simple";
      };
      components = {
        autoexporter = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.filepath
          ];
        };
        exes = {
          autoexporter = {
            depends  = [
              hsPkgs.base
              hsPkgs.autoexporter
            ];
          };
        };
      };
    }