{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "epass";
          version = "0.1";
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
        "epass" = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
          ];
        };
      };
    }