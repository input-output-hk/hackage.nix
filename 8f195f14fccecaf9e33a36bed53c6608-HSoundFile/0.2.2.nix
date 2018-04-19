{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "HSoundFile";
          version = "0.2.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "John W. Lato, jwlato@gmail.com";
        author = "John W. Lato, jwlato@gmail.com";
        homepage = "http://mml.music.utexas.edu/jwlato/HSoundFile";
        url = "";
        synopsis = "Audio file reading/writing";
        description = "encode and decode soundfiles using lazy ByteStrings.\nAudio files may be read or written, with classes and\ndata structures to facilitate conversion between different\nformats.  Currently only wave format is supported.\nError handling is supported via Control.Monad.ErrorT.";
        buildType = "Simple";
      };
      components = {
        HSoundFile = {
          depends  = [
            hsPkgs.haskell98
            hsPkgs.binary
            hsPkgs.filepath
            hsPkgs.mtl
            hsPkgs.parallel
          ] ++ (if _flags.splitbase
            then [
              hsPkgs.base
              hsPkgs.bytestring
            ]
            else [ hsPkgs.base ]);
        };
      };
    }