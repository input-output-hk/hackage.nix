{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hylogen";
          version = "0.1.0.6";
        };
        license = "MIT";
        copyright = "";
        maintainer = "freshdried@gmail.com";
        author = "Sean Lee";
        homepage = "https://github.com/sleexyz/hylogen";
        url = "";
        synopsis = "an EDSL for live-coding fragment shaders";
        description = "an EDSL for live-coding fragment shaders";
        buildType = "Simple";
      };
      components = {
        hylogen = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector-space
          ];
        };
        exes = {
          hylogen = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.filepath
              hsPkgs.hinotify
              hsPkgs.network
              hsPkgs.process
              hsPkgs.random
              hsPkgs.text
              hsPkgs.websockets
            ];
          };
        };
      };
    }