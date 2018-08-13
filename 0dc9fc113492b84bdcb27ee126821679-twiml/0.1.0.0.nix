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
      specVersion = "1.8";
      identifier = {
        name = "twiml";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "markandrusroberts@gmail.com";
      author = "Mark Andrus Roberts";
      homepage = "https://github.com/markandrus/twiml-haskell";
      url = "";
      synopsis = "TwiML library for Haskell";
      description = "TwiML library for Haskell";
      buildType = "Simple";
    };
    components = {
      "twiml" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.xml)
          (hsPkgs.network)
        ];
      };
      tests = {
        "Tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.lens)
            (hsPkgs.twiml)
          ];
        };
      };
    };
  }