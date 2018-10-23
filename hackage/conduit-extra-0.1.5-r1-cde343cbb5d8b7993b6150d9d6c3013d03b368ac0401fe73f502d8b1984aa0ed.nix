{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "conduit-extra";
        version = "0.1.5";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "http://github.com/snoyberg/conduit";
      url = "";
      synopsis = "Experimental helper functions for conduit.";
      description = "This package is meant as a testing ground for new concepts in conduit. The idea is to have a much lower barrier to entry for this library relative to conduit itself. This way, conduit itself will continue to have a best-practices, minimal, stable API, while people are free to try crazy new features.";
      buildType = "Simple";
    };
    components = {
      "conduit-extra" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.conduit)
          (hsPkgs.mtl)
          (hsPkgs.monad-loops)
          (hsPkgs.containers)
          (hsPkgs.primitive)
          (hsPkgs.transformers)
          (hsPkgs.vector)
          (hsPkgs.void)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.bytestring)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.resourcet)
            (hsPkgs.void)
          ];
        };
      };
    };
  }