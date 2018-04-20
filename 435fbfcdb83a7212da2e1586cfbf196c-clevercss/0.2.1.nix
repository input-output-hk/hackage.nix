{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
      parsec2 = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "clevercss";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "georg@python.org";
        author = "Georg Brandl";
        homepage = "http://sandbox.pocoo.org/clevercss-hs/";
        url = "";
        synopsis = "A CSS preprocessor";
        description = "CleverCSS is a CSS preprocessing library that allows defining variables and nesting selectors so that you don't need to Repeat Yourself.";
        buildType = "Simple";
      };
      components = {
        clevercss = {
          depends  = (if _flags.splitbase
            then [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.mtl
            ]
            else [
              hsPkgs.base
              hsPkgs.mtl
            ]) ++ [ hsPkgs.parsec ];
        };
        exes = {
          clevercss = {
            depends  = [ hsPkgs.parsec ];
          };
        };
      };
    }