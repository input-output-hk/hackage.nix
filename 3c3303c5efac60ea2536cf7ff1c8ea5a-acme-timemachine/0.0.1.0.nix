{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "acme-timemachine";
          version = "0.0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "mniip@mniip.com";
        author = "mniip";
        homepage = "";
        url = "";
        synopsis = "An easy way to perform and unperform IO and other stateful actions.";
        description = "When doing some computations with side effects, one might regret the decision to change the state of the universe. This package provides an 'undo' function for such cases, and universe suspension/resuming functions for finer control.";
        buildType = "Simple";
      };
      components = {
        acme-timemachine = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.ghc-prim
          ];
        };
      };
    }