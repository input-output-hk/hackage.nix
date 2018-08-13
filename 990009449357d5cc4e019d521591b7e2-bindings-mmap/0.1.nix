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
        name = "bindings-mmap";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "claudiusmaximus@goto10.org";
      author = "Claude Heiland-Allen";
      homepage = "https://gitorious.org/hsv4l2";
      url = "";
      synopsis = "bindings to mmap for Linux";
      description = "Bindings to mmap for POSIX, wrapping:\n<file:///usr/include/sys/mmap.h>";
      buildType = "Simple";
    };
    components = {
      "bindings-mmap" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bindings-DSL)
        ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
    };
  }