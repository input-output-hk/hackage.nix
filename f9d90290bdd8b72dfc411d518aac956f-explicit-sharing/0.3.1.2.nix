{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "explicit-sharing";
          version = "0.3.1.2";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "sebf@informatik.uni-kiel.de";
        author = "Chung-chieh Shan, Oleg Kiselyov, and Sebastian Fischer";
        homepage = "";
        url = "";
        synopsis = "Explicit Sharing of Monadic Effects";
        description = "This package implements a monad transformer for sharing monadic\neffects.";
        buildType = "Custom";
      };
      components = {
        explicit-sharing = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
          ];
        };
      };
    }