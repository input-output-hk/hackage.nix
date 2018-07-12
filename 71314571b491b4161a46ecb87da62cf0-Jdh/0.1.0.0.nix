{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Jdh";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "brunoczim@gmail.com";
        author = "Bruno Corrêa Zimmermann";
        homepage = "https://github.com/brunoczim/Json-Data-for-Haskell";
        url = "";
        synopsis = "A Json implementation for Haskell, with JavaScript Values and Encoding/Decoding";
        description = "This package provides JSON data encoding and decoding for Haskell. It also provides option for beautifying the JSON encoding output with indentation and line breaks. The JSValue data type is the center of the package, and it is a type constructor; it may have different Integral types, Fractional Types or IsString types.";
        buildType = "Simple";
      };
      components = {
        "Jdh" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }