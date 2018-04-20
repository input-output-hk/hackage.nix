{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "colock";
          version = "0.2.2";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "Lukas Mai <l.mai@web.de>";
        author = "Lukas Mai";
        homepage = "";
        url = "";
        synopsis = "thread-friendly file locks that don't block the entire program";
        description = "This module provides file locks that (unlike their counterparts in System.Posix.IO)\nleave other threads running while one waits for the lock.";
        buildType = "Custom";
      };
      components = {
        colock = {
          depends  = [
            hsPkgs.base
            hsPkgs.unix
          ];
        };
      };
    }