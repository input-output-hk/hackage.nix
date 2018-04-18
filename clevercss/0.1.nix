{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "clevercss";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "georg@python.org";
        author = "Georg Brandl";
        homepage = "http://sandbox.pocoo.org/clevercss-hs/";
        url = "";
        synopsis = "A CSS preprocessor";
        description = "CleverCSS is a CSS preprocessing library that allows defining variables and nesting selectors so that you don't need to Repeat Yourself.";
        buildType = "Custom";
      };
      components = {
        clevercss = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.mtl
            hsPkgs.haskell98
          ];
        };
        exes = {
          clevercss = {
            depends  = [
              hsPkgs.base
              hsPkgs.parsec
              hsPkgs.mtl
              hsPkgs.haskell98
            ];
          };
        };
      };
    }