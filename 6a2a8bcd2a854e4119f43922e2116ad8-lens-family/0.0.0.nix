{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "lens-family";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2012 Russell O'Connor";
        maintainer = "Russell O'Connor <roconnor@theorem.ca>";
        author = "Russell O'Connor";
        homepage = "";
        url = "";
        synopsis = "Lens Families";
        description = "This package provide optimal first class functional references\nIn addition to the usual operations of getting, setting and composition, plus integration with monad state, lens families provide some unique features:\n\n* Polymorphic updating\n\n* Cast projection functions to read-only lenses\n\n* Cast semantic editor combinators to modify-only lenses";
        buildType = "Simple";
      };
      components = {
        lens-family = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.lens-family-core
          ];
        };
      };
    }