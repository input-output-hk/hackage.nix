{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      devel = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "progress-meter";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright 2017 Ertugrul Söylemez";
        maintainer = "Ertugrul Söylemez <esz@posteo.de>";
        author = "Ertugrul Söylemez <esz@posteo.de>";
        homepage = "https://github.com/esoeylemez/progress-meter";
        url = "";
        synopsis = "Live diagnostics for concurrent activity";
        description = "This library can be used to display progress meters or\nother diagnostics for concurrently running actions.  It supports\ndynamic creation and removal of new sub-meters as well es correct\nbehaviour when printing diagnostics that are not part of the\nprogress meter and should just scroll by.\n\nThe @System.ProgressMeter@ module contains a tutorial.";
        buildType = "Simple";
      };
      components = {
        progress-meter = {
          depends  = [
            hsPkgs.async
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.stm
          ] ++ pkgs.lib.optionals _flags.devel [
            hsPkgs.rapid
            hsPkgs.rapid-term
          ];
        };
      };
    }