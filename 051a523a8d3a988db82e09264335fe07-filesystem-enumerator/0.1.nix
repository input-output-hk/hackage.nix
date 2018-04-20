{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "filesystem-enumerator";
          version = "0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "jmillikin@gmail.com";
        author = "John Millikin <jmillikin@gmail.com>, Michael Snoyman <michael@snoyman.com>";
        homepage = "https://john-millikin.com/software/filesystem-enumerator/";
        url = "";
        synopsis = "Enumerator-based API for manipulating the filesystem.";
        description = "";
        buildType = "Simple";
      };
      components = {
        filesystem-enumerator = {
          depends  = [
            hsPkgs.base
            hsPkgs.enumerator
            hsPkgs.system-filepath
            hsPkgs.system-fileio
            hsPkgs.transformers
          ] ++ (if system.isWindows
            then [ hsPkgs.Win32 ]
            else [ hsPkgs.unix ]);
        };
      };
    }