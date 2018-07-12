{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.14";
        identifier = {
          name = "numhask";
          version = "0.0.6";
        };
        license = "BSD-3-Clause";
        copyright = "Tony Day";
        maintainer = "tonyday567@gmail.com";
        author = "Tony Day";
        homepage = "https://github.com/tonyday567/numhask";
        url = "";
        synopsis = "A numeric prelude";
        description = "Classes for numbers, higher-dimension representable objects, and algebras that combine them. See NumHask.Examples for usage.\n\n> {-# LANGUAGE ExtendedDefaultRules #-}\n> {-# LANGUAGE NoImplicitPrelude #-}\n> {-# LANGUAGE DataKinds #-}\n> import NumHask.Prelude\n";
        buildType = "Simple";
      };
      components = {
        "numhask" = {
          depends  = [
            hsPkgs.base
            hsPkgs.protolude
            hsPkgs.vector
            hsPkgs.QuickCheck
            hsPkgs.adjunctions
            hsPkgs.distributive
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.numhask
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.doctest
            ];
          };
        };
      };
    }