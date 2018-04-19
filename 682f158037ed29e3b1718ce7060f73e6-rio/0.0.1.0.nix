{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "rio";
          version = "0.0.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "https://github.com/commercialhaskell/rio#readme";
        url = "";
        synopsis = "A standard library for Haskell";
        description = "Work in progress library, see README at <https://github.com/commercialhaskell/rio#readme>";
        buildType = "Simple";
      };
      components = {
        rio = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.directory
            hsPkgs.exceptions
            hsPkgs.filepath
            hsPkgs.hashable
            hsPkgs.microlens
            hsPkgs.mtl
            hsPkgs.text
            hsPkgs.time
            hsPkgs.typed-process
            hsPkgs.unliftio
            hsPkgs.unordered-containers
            hsPkgs.vector
          ] ++ (if system.isWindows
            then [ hsPkgs.Win32 ]
            else [ hsPkgs.unix ]);
        };
      };
    }