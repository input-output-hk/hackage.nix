{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yesod-sass";
          version = "0.1.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "Felipe Garay";
        maintainer = "felipe.garay@usach.cl";
        author = "Felipe Garay";
        homepage = "";
        url = "";
        synopsis = "A simple quasiquoter to include sass code in yesod";
        description = "This is a simple quasiquoter to include sass code in yesod.\nYou can use wsass to create a widget in the same way as\nlucius.";
        buildType = "Simple";
      };
      components = {
        "yesod-sass" = {
          depends  = [
            hsPkgs.base
            hsPkgs.hsass
            hsPkgs.template-haskell
            hsPkgs.data-default
            hsPkgs.text
            hsPkgs.shakespeare
            hsPkgs.yesod-core
          ];
        };
      };
    }