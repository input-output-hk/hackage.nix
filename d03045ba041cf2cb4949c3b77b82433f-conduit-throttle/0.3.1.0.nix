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
        name = "conduit-throttle";
        version = "0.3.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2017 Moritz Schulte";
      maintainer = "mtesseract@silverratio.net";
      author = "Moritz Schulte";
      homepage = "https://github.com/mtesseract/conduit-throttle#readme";
      url = "";
      synopsis = "Throttle Conduit Producers";
      description = "This packages is based on the throttle-io-stream package and provides functionality for throttling Conduit producers according to a provided configuration.";
      buildType = "Simple";
    };
    components = {
      "conduit-throttle" = {
        depends  = [
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.conduit)
          (hsPkgs.conduit-combinators)
          (hsPkgs.conduit-extra)
          (hsPkgs.monad-control)
          (hsPkgs.resourcet)
          (hsPkgs.stm)
          (hsPkgs.stm-chans)
          (hsPkgs.throttle-io-stream)
          (hsPkgs.unliftio)
          (hsPkgs.unliftio-core)
        ];
      };
      tests = {
        "conduit-test" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.conduit)
            (hsPkgs.conduit-combinators)
            (hsPkgs.conduit-extra)
            (hsPkgs.conduit-throttle)
            (hsPkgs.monad-control)
            (hsPkgs.resourcet)
            (hsPkgs.stm)
            (hsPkgs.stm-chans)
            (hsPkgs.stm-conduit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.throttle-io-stream)
            (hsPkgs.unliftio)
            (hsPkgs.unliftio-core)
          ];
        };
      };
    };
  }