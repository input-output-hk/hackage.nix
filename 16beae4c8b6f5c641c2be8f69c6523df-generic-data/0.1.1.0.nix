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
        name = "generic-data";
        version = "0.1.1.0";
      };
      license = "MIT";
      copyright = "2018 Li-yao Xia";
      maintainer = "lysxia@gmail.com";
      author = "Li-yao Xia";
      homepage = "https://github.com/Lysxia/generic-data#readme";
      url = "";
      synopsis = "Utilities for GHC.Generics";
      description = "This package provides common functions on generic types.\nSee README.";
      buildType = "Simple";
    };
    components = {
      "generic-data" = {
        depends  = [
          (hsPkgs.contravariant)
          (hsPkgs.show-combinators)
          (hsPkgs.base)
        ];
      };
      tests = {
        "unit-test" = {
          depends  = [
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.generic-data)
            (hsPkgs.base)
          ];
        };
        "record-test" = {
          depends  = [
            (hsPkgs.generic-data)
            (hsPkgs.base)
          ];
        };
      };
    };
  }