{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "sound-collage";
        version = "0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "";
      url = "";
      synopsis = "Approximate a song from other pieces of sound";
      description = "Approximate a song from other pieces of sound";
      buildType = "Simple";
    };
    components = {
      exes = {
        "sound-collage" = {
          depends  = [
            (hsPkgs.fft)
            (hsPkgs.carray)
            (hsPkgs.array)
            (hsPkgs.storablevector-carray)
            (hsPkgs.storablevector)
            (hsPkgs.synthesizer-core)
            (hsPkgs.soxlib)
            (hsPkgs.sample-frame)
            (hsPkgs.numeric-prelude)
            (hsPkgs.filepath)
            (hsPkgs.temporary)
            (hsPkgs.directory)
            (hsPkgs.transformers)
            (hsPkgs.utility-ht)
            (hsPkgs.base)
          ];
        };
      };
    };
  }