{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "unix";
          version = "2.7.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "libraries@haskell.org";
        author = "";
        homepage = "https://github.com/haskell/unix";
        url = "";
        synopsis = "POSIX functionality";
        description = "This package gives you access to the set of operating system\nservices standardised by POSIX 1003.1b (or the IEEE Portable\nOperating System Interface for Computing Environments -\nIEEE Std. 1003.1).\n\nThe package is not supported under Windows (except under Cygwin).";
        buildType = "Configure";
      };
      components = {
        "unix" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.time
          ];
        };
      };
    }