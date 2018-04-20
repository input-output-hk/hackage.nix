{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "reactive-banana";
          version = "0.5.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Heinrich Apfelmus <apfelmus quantentunnel de>";
        author = "Heinrich Apfelmus";
        homepage = "http://haskell.org/haskellwiki/Reactive-banana";
        url = "";
        synopsis = "Practical library for functional reactive programming (FRP).";
        description = "Reactive-banana is a practical library for Functional Reactive Programming (FRP).\n\nFRP offers an elegant and concise way to express interactive programs such as graphical user interfaces, animations, computer music or robot controllers. Thus, the reactive-banana library promises to avoid the spagethetti code commonly used in traditional GUI technologies.\n\nSee the project homepage <http://haskell.org/haskellwiki/Reactive-banana>\nfor a more detailed introduction and features.\n\nStability forecast:\nNo semantic bugs expected.\nSignificant API changes are likely in future versions,\nthough the main interface is beginning to stabilize.";
        buildType = "Simple";
      };
      components = {
        reactive-banana = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.QuickCheck
            hsPkgs.vault
            hsPkgs.unordered-containers
            hsPkgs.hashable
            hsPkgs.fclabels
          ];
        };
      };
    }