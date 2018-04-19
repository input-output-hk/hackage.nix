{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "composition-extra";
          version = "2.0.0";
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
            hsPkgs.composition
          ];
        };
      };
    }