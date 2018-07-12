{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "supermonad";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2016, Jan Bracker";
        maintainer = "Jan Bracker <jan.bracker@googlemail.com>";
        author = "Jan Bracker <jan.bracker@googlemail.com>";
        homepage = "";
        url = "";
        synopsis = "Plugin and base library to support supermonads in Haskell";
        description = "The @supermonad@ library adds support for supermonads to GHC\nusing a type checker plugin. Plugins are available from GHC 7.10 onwards.\nThe base library containing the Haskell representation of super monads\nis also given by this package.\nAdditional information can be found in the <https://github.com/jbracker/supermonad README>.";
        buildType = "Simple";
      };
      components = {
        "supermonad" = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.fgl
          ];
        };
      };
    }