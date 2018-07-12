{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "ContArrow";
          version = "0.0.4";
        };
        license = "LicenseRef-LGPL";
        copyright = "Copyright (c) 2007, 2008 Evgeny Jukov";
        maintainer = "Evgeny Jukov <masloed@gmail.com>";
        author = "Evgeny Jukov";
        homepage = "http://macode.sourceforge.net/ContArrow";
        url = "";
        synopsis = "Control.Arrow.Transformer.Cont";
        description = "A library providing Control.Arrow.Transformer.Cont";
        buildType = "Simple";
      };
      components = {
        "ContArrow" = {
          depends  = [
            hsPkgs.base
            hsPkgs.arrows
          ];
        };
      };
    }