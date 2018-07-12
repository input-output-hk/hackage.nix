{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.3.0";
        identifier = {
          name = "unix-pty-light";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "scook0@gmail.com";
        author = "Stuart Cook";
        homepage = "http://code.haskell.org/~scook0/unix-pty-light";
        url = "";
        synopsis = "POSIX pseudo-terminal support";
        description = "Support for POSIX 1003.1 pseudo-terminal functionality.\nUnlike the @unix@ package's pseudo-terminal support, this\nbinding works with GHC 6.6.";
        buildType = "Simple";
      };
      components = {
        "unix-pty-light" = {
          depends  = [
            hsPkgs.base
            hsPkgs.unix
          ];
        };
      };
    }