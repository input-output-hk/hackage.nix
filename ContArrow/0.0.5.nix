{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "ContArrow";
          version = "0.0.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Evgeny Jukov <masloed@gmail.com>";
        author = "Evgeny Jukov";
        homepage = "";
        url = "";
        synopsis = "Control.Arrow.Transformer.Cont";
        description = "A library providing Control.Arrow.Transformer.Cont";
        buildType = "Simple";
      };
      components = {
        ContArrow = {
          depends  = [
            hsPkgs.base
            hsPkgs.arrows
          ];
        };
      };
    }