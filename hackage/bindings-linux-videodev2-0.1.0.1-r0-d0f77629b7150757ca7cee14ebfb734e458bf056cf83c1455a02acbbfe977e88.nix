{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "bindings-linux-videodev2";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "claude@mathr.co.uk";
      author = "Claude Heiland-Allen";
      homepage = "https://code.mathr.co.uk/bindings-linux-videodev2";
      url = "";
      synopsis = "bindings to Video For Linux Two (v4l2) kernel interfaces";
      description = "Bindings for Video For Linux Two (v4l2), wrapping:\n<file:///usr/include/linux/videodev2.h>\nUpstream documentation at:\n<http://linuxtv.org/downloads/v4l-dvb-apis/>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bindings-DSL)
          (hsPkgs.ioctl)
        ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
    };
  }