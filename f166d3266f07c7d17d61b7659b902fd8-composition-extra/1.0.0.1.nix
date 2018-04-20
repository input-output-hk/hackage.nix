{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "composition-extra";
          version = "1.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "athan.clark@gmail.com";
        author = "Athan Clark";
        homepage = "";
        url = "";
        synopsis = "Combinators for unorthodox structure composition";
        description = "";
        buildType = "Simple";
      };
      components = {
        composition-extra = {
          depends  = [
            hsPkgs.base
            hsPkgs.contravariant
          ];
        };
      };
    }