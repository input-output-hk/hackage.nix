{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "sndfile-enumerators";
          version = "0.4.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "John W. Lato, jwlato@gmail.com";
        author = "John W. Lato, jwlato@gmail.com";
        homepage = "http://tanimoto.us/~jwlato/haskell/sndfile-enumerators";
        url = "";
        synopsis = "Audio file reading/writing";
        description = "encode and decode soundfiles using Iteratees.\nAudio files may be read or written, with classes and\ndata structures to facilitate conversion between different\nformats.  Currently only wave format is supported.";
        buildType = "Simple";
      };
      components = {
        sndfile-enumerators = {
          depends  = [
            hsPkgs.binary
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.iteratee
            hsPkgs.bytestring
            hsPkgs.extensible-exceptions
            hsPkgs.word24
            hsPkgs.mutable-iter
            hsPkgs.MonadCatchIO-transformers
          ] ++ (if _flags.splitbase
            then [ hsPkgs.base hsPkgs.base ]
            else [ hsPkgs.base ]);
        };
      };
    }