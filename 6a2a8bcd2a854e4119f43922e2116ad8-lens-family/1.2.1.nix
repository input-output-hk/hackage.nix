{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "lens-family";
          version = "1.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2012,2013,2014 Russell O'Connor";
        maintainer = "Russell O'Connor <roconnor@theorem.ca>";
        author = "Russell O'Connor";
        homepage = "";
        url = "";
        synopsis = "Lens Families";
        description = "This package provides first class functional references.\nIn addition to the usual operations of getting, setting and composition, plus integration with monad state, lens families provide some unique features:\n\n* Polymorphic updating\n\n* Traversals\n\n* Cast projection functions to read-only lenses\n\n* Cast \\\"toList\\\" functions to read-only traversals\n\n* Cast semantic editor combinators to modify-only traversals.";
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