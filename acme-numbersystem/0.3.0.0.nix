{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "acme-numbersystem";
          version = "0.3.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "maxwellswadling@gmail.com";
        author = "Maxwell Swadling";
        homepage = "";
        url = "";
        synopsis = "Define the less than and add and subtract for nats";
        description = "Define the less than relation, add and subtract for numbers up to a number by using Template Haskell.";
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