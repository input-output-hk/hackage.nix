{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "monad-var";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2017 effectfully";
        maintainer = "effectfully@gmail.com";
        author = "effectfully";
        homepage = "https://github.com/effectfully/monad-var#readme";
        url = "";
        synopsis = "Generic operations over variables";
        description = "";
        buildType = "Simple";
      };
      components = {
        "monad-var" = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.stm
          ];
        };
      };
    }