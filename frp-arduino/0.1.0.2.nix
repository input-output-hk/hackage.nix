{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "frp-arduino";
          version = "0.1.0.2";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "ricli85@gmail.com";
        author = "Rickard Lindberg";
        homepage = "http://github.com/frp-arduino/frp-arduino";
        url = "";
        synopsis = "Arduino programming without the hassle of C.";
        description = "";
        buildType = "Simple";
      };
      components = {
        frp-arduino = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.containers
          ];
        };
      };
    }