{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "unix-io-extra";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Taru Karttunen <taruti@taruti.net>";
        maintainer = "taruti@taruti.net";
        author = "Taru Karttunen";
        homepage = "";
        url = "";
        synopsis = "Support for writev, pwrite and pread.";
        description = "Support for writev, pwrite and pread using Ptrs and unix Fds.\nFds can be obtained using System.Posix.IO from the unix package\nand using /handleToFd/ or /openFd/.";
        buildType = "Simple";
      };
      components = {
        unix-io-extra = {
          depends  = [ hsPkgs.base ];
        };
      };
    }