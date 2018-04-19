{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "glazier";
          version = "0.11.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Louis Pan";
        maintainer = "louis@pan.me";
        author = "Louis Pan";
        homepage = "https://github.com/louispan/glazier#readme";
        url = "";
        synopsis = "Composable widgets framework with enhanced with transformers and lens.";
        description = "Elm-like Action/Model/View/Update framework powered by typeclasses, monad transformers, and lens.";
        buildType = "Simple";
      };
      components = {
        glazier = {
          depends  = [
            hsPkgs.base
            hsPkgs.lens
            hsPkgs.mmorph
            hsPkgs.mtl
            hsPkgs.semigroupoids
            hsPkgs.transformers
          ];
        };
      };
    }