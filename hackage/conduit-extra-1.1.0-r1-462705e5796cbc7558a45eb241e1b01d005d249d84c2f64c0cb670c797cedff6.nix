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
        version = "1.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "http://github.com/snoyberg/conduit";
      url = "";
      synopsis = "Batteries included conduit: adapters for common libraries.";
      description = "The conduit package itself maintains relative small dependencies. The purpose of this package is to collect commonly used utility functions wrapping other library dependencies, without depending on heavier-weight dependencies. The basic idea is that this package should only depend on haskell-platform packages and conduit.";
      buildType = "Simple";
    };
    components = {
      "conduit-extra" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.conduit)
          (hsPkgs.bytestring)
          (hsPkgs.monad-control)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.attoparsec)
          (hsPkgs.blaze-builder)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.network)
          (hsPkgs.primitive)
          (hsPkgs.resourcet)
          (hsPkgs.streaming-commons)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.attoparsec)
            (hsPkgs.blaze-builder)
            (hsPkgs.bytestring)
            (hsPkgs.exceptions)
            (hsPkgs.resourcet)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.transformers-base)
          ];
        };
      };
    };
  }