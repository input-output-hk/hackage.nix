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
      specVersion = "1.10";
      identifier = {
        name = "store-streaming";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "2016 FP Complete";
      maintainer = "Michael Sloan <sloan@fpcomplete.com>";
      author = "";
      homepage = "https://github.com/fpco/store#readme";
      url = "";
      synopsis = "Streaming interfaces for `store`";
      description = "";
      buildType = "Simple";
    };
    components = {
      "store-streaming" = {
        depends  = [
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.free)
          (hsPkgs.resourcet)
          (hsPkgs.store)
          (hsPkgs.store-core)
          (hsPkgs.streaming-commons)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "store-test" = {
          depends  = [
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.free)
            (hsPkgs.hspec)
            (hsPkgs.hspec-smallcheck)
            (hsPkgs.network)
            (hsPkgs.resourcet)
            (hsPkgs.smallcheck)
            (hsPkgs.store)
            (hsPkgs.store-core)
            (hsPkgs.store-streaming)
            (hsPkgs.streaming-commons)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.void)
          ];
        };
      };
    };
  }