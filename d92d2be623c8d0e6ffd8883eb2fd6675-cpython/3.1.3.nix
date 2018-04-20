{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "cpython";
          version = "3.1.3";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "John Millikin <jmillikin@gmail.com>";
        author = "John Millikin <jmillikin@gmail.com>";
        homepage = "https://john-millikin.com/software/haskell-python/";
        url = "";
        synopsis = "Bindings for libpython";
        description = "These bindings allow Haskell code to call CPython code. It is not\ncurrently possible to call Haskell code from CPython, but this feature\nis planned.\n\nPlease note that this library uses a somewhat abnormal versioning scheme;\nthe first two version numbers are the CPython version, the third is the\npackage's version. For example, the package version 3.1.1 binds to CPython\n3.1, and has a package version of 1.";
        buildType = "Simple";
      };
      components = {
        cpython = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
          ];
          pkgconfig = [
            pkgconfPkgs."python-3.1"
          ];
        };
      };
    }