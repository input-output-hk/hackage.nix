{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "acme-numbersystem";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "maxwellswadling@gmail.com";
        author = "Maxwell Swadling";
        homepage = "";
        url = "";
        synopsis = "Define the less than relation for numbers up to a number";
        description = "Define the less than relation for numbers up to a number using Template Haskell.";
        buildType = "Simple";
      };
      components = {
        acme-numbersystem = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
          ];
        };
      };
    }