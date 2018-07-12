{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hylogen";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "freshdried@gmail.com";
        author = "Sean Lee";
        homepage = "https://github.com/sleexyz/hylogen";
        url = "";
        synopsis = "glsl edsl";
        description = "";
        buildType = "Simple";
      };
      components = {
        "hylogen" = {
          depends  = [ hsPkgs.base ];
        };
        exes = {
          "hylogen" = {
            depends  = [
              hsPkgs.base
              hsPkgs.websockets
              hsPkgs.hinotify
              hsPkgs.text
              hsPkgs.filepath
              hsPkgs.random
              hsPkgs.process
            ];
          };
        };
      };
    }