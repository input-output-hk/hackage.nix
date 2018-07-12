{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "NXT";
          version = "0.1.1";
        };
        license = "LGPL-3.0-only";
        copyright = "(c) 2010 Mitar Milutinovic";
        maintainer = "mitar.haskell@tnode.com";
        author = "Mitar Milutinovic";
        homepage = "http://mitar.tnode.com";
        url = "";
        synopsis = "A Haskell interface to Lego Mindstorms NXT";
        description = "A Haskell interface to Lego Mindstorms NXT over Bluetoooth. It supports direct commands, messages and\nmany sensors (also unofficial). It has also support for a simple message-based control of a NXT brick\nvia remotely executed program (basic NXC code included).\n\nIt contains two simple programs: @nxt-upload@ for uploading files to a NXT brick and @nxt-shutdown@ for\nremote shutdown of a NXT brick.\n\nIt works best on Linux and it also works on Mac OS X.\n\nFeel free to contribute additional features, interfaces for more sensors and propose or write other\n(example) programs.";
        buildType = "Simple";
      };
      components = {
        "NXT" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.bytestring
            hsPkgs.unix
            hsPkgs.time
          ];
          libs = pkgs.lib.optional system.isLinux pkgs.bluetooth;
        };
        exes = {
          "nxt-shutdown" = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.NXT
            ];
          };
          "nxt-upload" = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.bytestring
              hsPkgs.filepath
              hsPkgs.NXT
            ];
          };
        };
      };
    }