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
        name = "cpython";
        version = "3.1.2.1";
      };
      license = "GPL-3.0-only";
      copyright = "Copyright (c) John Millikin 2009-2010,\n(c) Python Software Foundation 2001-2009.";
      maintainer = "jmillikin@gmail.com";
      author = "John Millikin";
      homepage = "http://john-millikin.com/software/bindings/cpython/";
      url = "";
      synopsis = "Bindings for libpython";
      description = "These bindings allow Haskell code to call CPython code. It is not\ncurrently possible to call Haskell code from CPython, but this feature\nis planned.\n\nPlease note that this library uses a somewhat abnormal versioning scheme;\nthe first two version numbers are the CPython version, the third is the\npackage's major version, and the fourth is the package's minor version.\nFor example, the package version 3.1.1.0 binds to CPython 3.1, and has\na package version of (1, 0).";
      buildType = "Simple";
    };
    components = {
      "cpython" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
        ];
        pkgconfig = [
          (pkgconfPkgs.python-3.1)
        ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs)
        ];
      };
    };
  }