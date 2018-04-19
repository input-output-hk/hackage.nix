{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      devel = false;
      examples = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "progress-meter";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright 2017 Ertugrul Söylemez";
        maintainer = "Ertugrul Söylemez <esz@posteo.de>";
        author = "Ertugrul Söylemez <esz@posteo.de>";
        homepage = "https://github.com/esoeylemez/progress-meter";
        url = "";
        synopsis = "Live diagnostics for concurrent activity";
        description = "This library can be used to display a progress bar or\nother live diagnostics for your application.  It supports partial\nupdates from multiple threads without interfering with each other,\nand it has the correct behaviour when printing diagnostics that are\nnot part of the progress bar and should just scroll by.\n\nThe @System.Progress@ module contains a tutorial.";
        buildType = "Simple";
      };
      components = {
        progress-meter = {
          depends  = [
            hsPkgs.ansi-terminal
            hsPkgs.async
            hsPkgs.base
            hsPkgs.stm
          ] ++ pkgs.lib.optionals _flags.devel [
            hsPkgs.rapid
            hsPkgs.rapid-term
          ];
        };
      };
    }