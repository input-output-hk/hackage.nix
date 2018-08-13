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
        version = "0.2.0.0";
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
          (hsPkgs.data-default)
          (hsPkgs.deepseq)
          (hsPkgs.lens)
          (hsPkgs.network-uri)
          (hsPkgs.parsec)
          (hsPkgs.text)
          (hsPkgs.template-haskell)
          (hsPkgs.void)
          (hsPkgs.xml)
        ];
      };
      tests = {
        "Golden" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.data-default)
            (hsPkgs.Diff)
            (hsPkgs.lens)
            (hsPkgs.twiml)
          ];
        };
        "ShouldNotTypecheck" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.data-default)
            (hsPkgs.deepseq)
            (hsPkgs.HUnit)
            (hsPkgs.lens)
            (hsPkgs.should-not-typecheck)
            (hsPkgs.twiml)
            (hsPkgs.void)
          ];
        };
      };
    };
  }