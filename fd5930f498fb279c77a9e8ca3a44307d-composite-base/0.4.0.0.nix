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
        name = "composite-base";
        version = "0.4.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Confer Health, Inc.";
      maintainer = "oss@confer.care";
      author = "Confer Health, Inc.";
      homepage = "https://github.com/ConferHealth/composite#readme";
      url = "";
      synopsis = "Shared utilities for composite-* packages.";
      description = "Shared helpers for the various composite packages.";
      buildType = "Simple";
    };
    components = {
      "composite-base" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.exceptions)
          (hsPkgs.template-haskell)
          (hsPkgs.lens)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.profunctors)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.vinyl)
        ];
      };
      tests = {
        "composite-base-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.exceptions)
            (hsPkgs.template-haskell)
            (hsPkgs.lens)
            (hsPkgs.monad-control)
            (hsPkgs.mtl)
            (hsPkgs.profunctors)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.transformers-base)
            (hsPkgs.vinyl)
            (hsPkgs.QuickCheck)
            (hsPkgs.composite-base)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }