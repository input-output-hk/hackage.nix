{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      werror = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "beam-sqlite";
          version = "0.3.2.0";
        };
        license = "MIT";
        copyright = "(C) 2017-2018 Travis Athougies";
        maintainer = "travis@athougies.net";
        author = "Travis Athougies";
        homepage = "http://tathougies.github.io/beam/user-guide/backends/beam-sqlite/";
        url = "";
        synopsis = "Beam driver for SQLite";
        description = "Beam driver for the <https://sqlite.org/ SQLite> embedded database.\nSee <http://tathougies.github.io/beam/user-guide/backends/beam-sqlite/ here>\nfor more information";
        buildType = "Simple";
      };
      components = {
        beam-sqlite = {
          depends  = ([
            hsPkgs.base
            hsPkgs.beam-core
            hsPkgs.beam-migrate
            hsPkgs.sqlite-simple
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.hashable
            hsPkgs.time
            hsPkgs.dlist
            hsPkgs.mtl
            hsPkgs.free
            hsPkgs.scientific
            hsPkgs.network-uri
            hsPkgs.aeson
            hsPkgs.attoparsec
          ] ++ pkgs.lib.optional system.isWindows hsPkgs.Win32) ++ pkgs.lib.optional (system.isFreebsd || system.isNetbsd || system.isOsx || system.isLinux || system.isSolaris) hsPkgs.unix;
        };
      };
    }