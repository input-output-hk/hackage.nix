{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "lens-labels";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Google Inc.";
        maintainer = "proto-lens@googlegroups.com";
        author = "Judah Jacobson";
        homepage = "https://github.com/google/proto-lens";
        url = "";
        synopsis = "Integration of lenses with OverloadedLabels.";
        description = "Provides a framework to integrate lenses with GHC's\nOverloadedLabels extension.";
        buildType = "Simple";
      };
      components = {
        lens-labels = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
          ];
        };
      };
    }