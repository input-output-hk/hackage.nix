{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hyper";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Heinrich Apfelmus 2016-2017";
        maintainer = "Heinrich Apfelmus <apfelmus quantentunnel de>";
        author = "Heinrich Apfelmus";
        homepage = "";
        url = "";
        synopsis = "Display class for the HyperHaskell graphical Haskell interpreter";
        description = "This package is part of the /HyperHaskell/ project and provides\nthe @Display@ class for visualizing and pretty printing Haskell values.\n";
        buildType = "Simple";
      };
      components = {
        hyper = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.blaze-html
            hsPkgs.text
          ];
        };
      };
    }