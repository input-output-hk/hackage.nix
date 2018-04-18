{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "bindings-linux-videodev2";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "claudiusmaximus@goto10.org";
        author = "Claude Heiland-Allen";
        homepage = "https://gitorious.org/hsv4l2";
        url = "";
        synopsis = "bindings to Video For Linux Two (v4l2) kernel interfaces";
        description = "Bindings for Video For Linux Two (v4l2), wrapping:\n<file:///usr/include/linux/videodev2.h>\nUpstream documentation at:\n<http://linuxtv.org/downloads/v4l-dvb-apis/>";
        buildType = "Simple";
      };
      components = {
        bindings-linux-videodev2 = {
          depends  = [
            hsPkgs.base
            hsPkgs.bindings-DSL
            hsPkgs.ioctl
          ];
        };
      };
    }