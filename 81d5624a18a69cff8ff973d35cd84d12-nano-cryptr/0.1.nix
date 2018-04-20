{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "nano-cryptr";
          version = "0.1";
        };
        license = "GPL-2.0-only";
        copyright = "Carl Howells, 2010";
        maintainer = "chowells79@gmail.com";
        author = "Carl Howells";
        homepage = "http://github.com/chowells79/nano-cryptr";
        url = "";
        synopsis = "A threadsafe binding to glibc's crypt_r function";
        description = "This package wraps @glibc@'s @crypt_r@ function in a thread-safe manner.";
        buildType = "Simple";
      };
      components = {
        nano-cryptr = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
          libs = [ pkgs.crypt ];
        };
      };
    }