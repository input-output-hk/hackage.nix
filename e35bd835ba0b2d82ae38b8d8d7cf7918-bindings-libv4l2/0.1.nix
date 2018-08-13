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
      specVersion = "1.2";
      identifier = {
        name = "bindings-libv4l2";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "claudiusmaximus@goto10.org";
      author = "Claude Heiland-Allen";
      homepage = "https://gitorious.org/hsv4l2";
      url = "";
      synopsis = "bindings to libv4l2 for Linux";
      description = "Bindings for libv4l2 on Linux, wrapping:\n<file:///usr/include/libv4l2.h>";
      buildType = "Simple";
    };
    components = {
      "bindings-libv4l2" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bindings-DSL)
        ];
        libs = [ (pkgs."v4l2") ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
    };
  }