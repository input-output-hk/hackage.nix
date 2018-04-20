{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hylide";
          version = "0.1.4.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "freshdried@gmail.com";
        author = "Sean Lee";
        homepage = "https://github.com/sleexyz/hylide";
        url = "";
        synopsis = "WebGL renderer for livecoding shaders with Hylogen";
        description = "WebGL renderer for livecoding shaders with Hylogen";
        buildType = "Simple";
      };
      components = {
        hylide = {
          depends  = [
            hsPkgs.base
            hsPkgs.hylogen
            hsPkgs.vector-space
          ];
        };
        exes = {
          hylide = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.filepath
              hsPkgs.fsnotify
              hsPkgs.process
              hsPkgs.text
              hsPkgs.websockets
              hsPkgs.aeson
              hsPkgs.hint
              hsPkgs.hylide
              hsPkgs.hylogen
              hsPkgs.wai
              hsPkgs.http-types
              hsPkgs.warp
            ];
          };
        };
      };
    }