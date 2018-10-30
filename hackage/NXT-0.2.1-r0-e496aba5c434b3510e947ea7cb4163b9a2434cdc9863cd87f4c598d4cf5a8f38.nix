{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "NXT";
        version = "0.2.1";
      };
      license = "LGPL-3.0-only";
      copyright = "(c) 2011 Mitar Milutinovic";
      maintainer = "mitar.haskell@tnode.com";
      author = "Mitar Milutinovic";
      homepage = "http://mitar.tnode.com";
      url = "";
      synopsis = "A Haskell interface to Lego Mindstorms NXT";
      description = "A Haskell interface to Lego Mindstorms NXT over Bluetoooth. It supports direct commands, messages and\nmany sensors (also unofficial). It has also support for a simple message-based control of a NXT brick\nvia remotely executed program (basic NXC code included).\n\nIt contains three simple programs: @nxt-upload@ for uploading files to a NXT brick, @nxt-status@ for displaying\na NXT brick status, and @nxt-shutdown@ for remote shutdown of a NXT brick.\n\nIt works on Linux, Mac OS X and Windows.\n\nFeel free to contribute additional features, interfaces for more sensors and propose or write other\n(example) programs.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
          (hsPkgs.time)
          (hsPkgs.serialport)
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
        libs = pkgs.lib.optional (system.isLinux) (pkgs."bluetooth");
      };
      exes = {
        "nxt-shutdown" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.NXT)
          ];
        };
        "nxt-status" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.NXT)
          ];
        };
        "nxt-upload" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
            (hsPkgs.NXT)
          ];
        };
      };
      tests = {
        "nxt-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.mtl)
            (hsPkgs.time)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
            (hsPkgs.NXT)
          ];
        };
      };
    };
  }