{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "v4l2";
        version = "0.1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "claude@mathr.co.uk";
      author = "Claude Heiland-Allen";
      homepage = "https://gitorious.org/hsv4l2";
      url = "";
      synopsis = "interface to Video For Linux Two (V4L2)";
      description = "Higher-level interface to V4L2.";
      buildType = "Simple";
    };
    components = {
      "v4l2" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.bindings-DSL)
          (hsPkgs.bindings-libv4l2)
          (hsPkgs.bindings-linux-videodev2)
          (hsPkgs.bindings-posix)
          (hsPkgs.ioctl)
        ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
    };
  }