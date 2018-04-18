{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "system-fileio";
          version = "0.3.1";
        };
        license = "MIT";
        copyright = "Copyright (c) John Millikin 2011";
        maintainer = "jmillikin@gmail.com";
        author = "John Millikin <jmillikin@gmail.com>";
        homepage = "https://john-millikin.com/software/hs-fileio/";
        url = "";
        synopsis = "High-level filesystem interaction";
        description = "This is a small wrapper around the \\\"directory\\\", \\\"unix\\\", and \\\"Win32\\\"\npackages for use with \\\"system-filepath\\\".";
        buildType = "Simple";
      };
      components = {
        system-fileio = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.directory
            hsPkgs.system-filepath
            hsPkgs.text
            hsPkgs.time
          ] ++ (if system.isWindows
            then [ hsPkgs.Win32 ]
            else [ hsPkgs.unix ]);
        };
      };
    }