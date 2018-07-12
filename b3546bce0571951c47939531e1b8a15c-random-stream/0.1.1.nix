{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      have_urandom = false;
      have_ssl = false;
      have_win32_crypt = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "random-stream";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Manlio Perillo 2009";
        maintainer = "Manlio Perillo <manlio.perillo@gmail.com>";
        author = "Manlio Perillo <manlio.perillo@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "An infinite stream of random data";
        description = "Portable interface for the operating system source of pseudo\nrandom data.\nSupported sources are Unix /dev/urandom, Win32 CryptGenRandom and\nOpenSSL pseudo random numbers generator.\nThis package is based on idea from os.urandom implementation, in\nCPython.";
        buildType = "Simple";
      };
      components = {
        "random-stream" = {
          depends  = [
            hsPkgs.base
            hsPkgs.random
            hsPkgs.bytestring
            hsPkgs.binary
          ];
          libs = pkgs.lib.optionals (!_flags.have_urandom) (if _flags.have_ssl
            then [ pkgs.ssl ]
            else pkgs.lib.optional _flags.have_win32_crypt pkgs.advapi32);
        };
      };
    }