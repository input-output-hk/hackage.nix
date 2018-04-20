{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "CarneadesDSL";
          version = "1.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2012 Bas van Gijzel";
        maintainer = "Bas van Gijzel <bmv@cs.nott.ac.uk>";
        author = "Bas van Gijzel, Henrik Nilsson";
        homepage = "http://www.cs.nott.ac.uk/~bmv/CarneadesDSL/";
        url = "";
        synopsis = "An implementation and DSL for the Carneades argumentation model.";
        description = "An implementation and domain specific language for the Carneades\nargumentation model. See Haskell Gets Argumentative in the\nProceedings of Symposium on Trends in Functional Programming\n(TFP 2012) by Bas van Gijzel and Henrik Nilsson or the\npackage's homepage. Thanks to Stefan Sabev for providing initial\ncode for the cyclicity check.";
        buildType = "Simple";
      };
      components = {
        CarneadesDSL = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.fgl
          ];
        };
      };
    }