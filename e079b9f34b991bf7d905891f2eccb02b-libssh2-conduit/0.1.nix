{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "libssh2-conduit";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "portnov84@rambler.ru";
        author = "IlyaPortnov";
        homepage = "http://redmine.iportnov.ru/projects/libssh2-hs";
        url = "";
        synopsis = "Conduit wrappers for libssh2 FFI bindings (see libssh2 package).";
        description = "This package provides Conduit interface (see conduit package) for\nlibssh2 FFI bindings (see libssh2 package). This allows one to\nreceive data from SSH channels lazily, without need to read\nall channel output to the memory.";
        buildType = "Simple";
      };
      components = {
        libssh2-conduit = {
          depends  = [
            hsPkgs.base
            hsPkgs.stm
            hsPkgs.transformers
            hsPkgs.monad-control
            hsPkgs.conduit
            hsPkgs.libssh2
          ];
        };
      };
    }