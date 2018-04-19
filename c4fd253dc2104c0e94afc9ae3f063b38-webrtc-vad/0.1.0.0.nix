{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "webrtc-vad";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "chpatrick@gmail.com";
        author = "Patrick Chilton";
        homepage = "";
        url = "";
        synopsis = "Easy voice activity detection";
        description = "A simple library wrapping WebRTC's voice activity detection engine.";
        buildType = "Simple";
      };
      components = {
        webrtc-vad = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
          ];
        };
      };
    }