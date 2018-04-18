{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "unix";
          version = "2.7.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "libraries@haskell.org";
        author = "";
        homepage = "https://github.com/haskell/unix";
        url = "";
        synopsis = "POSIX functionality";
        description = "This package gives you access to the set of operating system\nservices standardised by\n<http://pubs.opengroup.org/onlinepubs/9699919799/ POSIX.1-2008>\n(or the IEEE Portable Operating System Interface for Computing\nEnvironments - IEEE Std. 1003.1).\n\nThe package is not supported under Windows.";
        buildType = "Configure";
      };
      components = {
        unix = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.time
          ] ++ pkgs.lib.optional system.isWindows hsPkgs.unbuildable;
        };
      };
    }