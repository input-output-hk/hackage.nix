{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "miniplex";
          version = "0.3.4";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "Lukas Mai <l.mai@web.de>";
        author = "Lukas Mai";
        homepage = "";
        url = "";
        synopsis = "simple 1-to-N interprocess communication";
        description = "This module provides interprocess communication channels. This is meant\nto be used by logger-like programs that want to send status reports to\nN listeners (where N >= 0).";
        buildType = "Simple";
      };
      components = {
        miniplex = {
          depends  = [
            hsPkgs.base
            hsPkgs.network
            hsPkgs.stm
            hsPkgs.unix
            hsPkgs.mtl
            hsPkgs.colock
          ] ++ pkgs.lib.optional _flags.small_base hsPkgs.directory;
        };
        exes = {
          plox-read = {};
          plox-write = {};
        };
      };
    }