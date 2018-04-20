{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "modular-arithmetic";
          version = "1.2.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "tikhon@jelv.is";
        author = "Tikhon Jelvis <tikhon@jelv.is>";
        homepage = "";
        url = "";
        synopsis = "A type for integers modulo some constant.";
        description = "A convenient type for working with integers modulo some constant. It saves you from manually wrapping numeric operations all over the place and prevents a range of simple mistakes. @Integer `Mod` 7@ is the type of integers (mod 7) backed by @Integer@.\nWe also have some cute syntax for these types like @ℤ/7@ for integers modulo 7.";
        buildType = "Simple";
      };
      components = {
        modular-arithmetic = {
          depends  = [ hsPkgs.base ];
        };
      };
    }