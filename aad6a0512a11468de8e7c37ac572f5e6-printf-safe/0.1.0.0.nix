{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "printf-safe";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "kiss.csongor.kiss@gmail.com";
        author = "Csongor Kiss";
        homepage = "";
        url = "";
        synopsis = "Type safe interface for Text.Printf";
        description = "A type-safe interface for Text.Printf that ensures at compile-time that the number and type of arguments passed to printf matches the format specifier.";
        buildType = "Simple";
      };
      components = {
        "printf-safe" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }