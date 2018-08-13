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
        name = "split-record";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://code.haskell.org/~thielema/split-record/";
      url = "";
      synopsis = "Split a big audio file into pieces at positions of silence";
      description = "Split a big audio file into pieces at positions of silence";
      buildType = "Simple";
    };
    components = {
      exes = {
        "split-record" = {
          depends  = [
            (hsPkgs.synthesizer-core)
            (hsPkgs.soxlib)
            (hsPkgs.storablevector)
            (hsPkgs.transformers)
            (hsPkgs.utility-ht)
            (hsPkgs.numeric-prelude)
            (hsPkgs.base)
          ];
        };
      };
    };
  }