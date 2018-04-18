{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "glazier";
          version = "0.7.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Louis Pan";
        maintainer = "louis@pan.me";
        author = "Louis Pan";
        homepage = "https://github.com/louispan/glazier#readme";
        url = "";
        synopsis = "Composable widgets framework";
        description = "Please see README.md";
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
            hsPkgs.profunctors
          ];
        };
      };
    }