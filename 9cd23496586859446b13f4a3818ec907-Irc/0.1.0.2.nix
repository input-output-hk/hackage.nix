{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Irc";
          version = "0.1.0.2";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "yunxing@cloudwalk.me";
        author = "Yunxing Dai";
        homepage = "https://github.com/yunxing/Irc";
        url = "";
        synopsis = "DSL for IRC bots";
        description = "Irc is a monadic DSL and library for writing Irc bots.\nIt conveniently utilizes 'do' notation in the style similar to Shake";
        buildType = "Simple";
      };
      components = {
        "Irc" = {
          depends  = [
            hsPkgs.base
            hsPkgs.data-default
            hsPkgs.transformers
            hsPkgs.network
            hsPkgs.mtl
          ];
        };
        tests = {
          "doctests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
        };
      };
    }