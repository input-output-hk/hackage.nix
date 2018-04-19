{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "epass";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Andreas Baldeau <andreas@baldeau.net>";
        author = "Andreas Baldeau";
        homepage = "http://github.com/baldo/epass";
        url = "";
        synopsis = "Baisc, Erlang-like message passing supporting sockets.";
        description = "This package provides Erlang-like mailboxes for message passing.\nIt also supports wrapping communication via e.g. sockets.";
        buildType = "Simple";
      };
      components = {
        epass = {
          depends  = [
            hsPkgs.base
            hsPkgs.stm
            hsPkgs.time
          ];
        };
      };
    }