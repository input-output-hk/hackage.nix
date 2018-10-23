{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "composite-base";
        version = "0.5.4.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Confer Health, Inc.";
      maintainer = "oss@confer.health";
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
          (hsPkgs.lens)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.profunctors)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.vinyl)
        ];
      };
      tests = {
        "composite-base-test" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.composite-base)
            (hsPkgs.exceptions)
            (hsPkgs.hspec)
            (hsPkgs.lens)
            (hsPkgs.monad-control)
            (hsPkgs.mtl)
            (hsPkgs.profunctors)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.transformers-base)
            (hsPkgs.vinyl)
          ];
        };
      };
    };
  }