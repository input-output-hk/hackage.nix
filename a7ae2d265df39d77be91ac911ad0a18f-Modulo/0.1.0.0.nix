{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "Modulo";
          version = "0.1.0.0";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "murzin.nikolay@gmail.com";
        author = "Nikolay Murzin";
        homepage = "";
        url = "";
        synopsis = "Modular arithmetic via Numeric-Prelude";
        description = "Smart way of calculating long expressions in modular arithmetics.\nWatch examples at the end of a source code.\nUse NoImplicitPrelude language parameter with this module.";
        buildType = "Simple";
      };
      components = {
        Modulo = {
          depends  = [
            hsPkgs.base
            hsPkgs.numeric-prelude
          ];
        };
      };
    }