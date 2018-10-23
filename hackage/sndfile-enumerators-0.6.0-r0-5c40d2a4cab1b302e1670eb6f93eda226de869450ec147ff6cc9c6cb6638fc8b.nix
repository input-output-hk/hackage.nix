{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "sndfile-enumerators";
        version = "0.6.0";
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
      "sndfile-enumerators" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.iteratee)
          (hsPkgs.bytestring)
          (hsPkgs.word24)
          (hsPkgs.mutable-iter)
          (hsPkgs.MonadCatchIO-transformers)
        ];
      };
    };
  }