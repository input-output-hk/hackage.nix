{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.14";
        identifier = {
          name = "hArduino";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Levent Erkok, 2013";
        maintainer = "Levent Erkok (erkokl@gmail.com)";
        author = "Levent Erkok";
        homepage = "http://leventerkok.github.com/hArduino";
        url = "";
        synopsis = "Control your Arduino board from Haskell.";
        description = "Control Arduino from Haskell, using the Firmata protocol.\n\nThe hArduino library allows construction of Haskell programs that control\nArduino boards that are running the (freely available) Firmata program. Note\nthat hArduino does /not/ allow you to run arbitrary Haskell code on the\nArduino! It simply allows you to control a board from Haskell, where you\ncan exchange information with the board, send/receive commands from other\nperipherals connected, etc.\n\nhArduino is work-in-progress. Comments, bug-reports, and patches are welcome.";
        buildType = "Simple";
      };
      components = {
        hArduino = {
          depends  = [
            hsPkgs.base
            hsPkgs.serialport
            hsPkgs.bytestring
            hsPkgs.mtl
            hsPkgs.unix
            hsPkgs.containers
            hsPkgs.process
          ];
        };
      };
    }