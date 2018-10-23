{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "v4l2-examples";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "claudiusmaximus@goto10.org";
      author = "Claude Heiland-Allen";
      homepage = "https://gitorious.org/hsv4l2";
      url = "";
      synopsis = "video for linux two examples";
      description = "This package contains examples for accessing v4l2 from Haskell:\n\n* v4l2-capture - dumps frames from a video device to stdout:\n\n@\$  v4l2-capture |\ny4mscaler -v0 -I ilace=none -I sar=1/1 -O chromass=420mpeg2 |\nmplayer -demuxer y4m - -vo x11@\n\nCurrently low-level imperative code; but a mid-level v4l2 library is\nplanned which will make it less horrific.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "v4l2-capture" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bindings-libv4l2)
            (hsPkgs.bindings-linux-videodev2)
            (hsPkgs.bindings-mmap)
            (hsPkgs.bindings-posix)
            (hsPkgs.c-io)
            (hsPkgs.ioctl)
          ];
        };
      };
    };
  }