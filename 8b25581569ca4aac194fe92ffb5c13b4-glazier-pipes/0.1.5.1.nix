{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "glazier-pipes";
          version = "0.1.5.1";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Louis Pan";
        maintainer = "louis@pan.me";
        author = "Louis Pan";
        homepage = "https://github.com/louispan/glazier-pipes#readme";
        url = "";
        synopsis = "A threaded rendering framework using glaizer and pipes";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        glazier-pipes = {
          depends  = [
            hsPkgs.base
            hsPkgs.glazier
            hsPkgs.mmorph
            hsPkgs.pipes
            hsPkgs.stm
            hsPkgs.stm-extras
            hsPkgs.transformers
          ];
        };
      };
    }