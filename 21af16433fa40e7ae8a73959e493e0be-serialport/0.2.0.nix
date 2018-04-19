{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "serialport";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009 Joris Putcuyps";
        maintainer = "Joris.Putcuyps@gmail.com";
        author = "Joris Putcuyps";
        homepage = "http://users.skynet.be/jputcu/projects/haskell-serialport/index.html";
        url = "";
        synopsis = "Cross platform serial port library.";
        description = "This library provides a way to interface the serial port from haskell in a cross platform way.\n\nTested on the following platforms:\n\n* Linux (Arch)\n\n* Windows XP 32-bit";
        buildType = "Simple";
      };
      components = {
        serialport = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
          ] ++ (if !system.isWindows
            then [ hsPkgs.unix ]
            else [ hsPkgs.Win32 ]);
        };
      };
    }