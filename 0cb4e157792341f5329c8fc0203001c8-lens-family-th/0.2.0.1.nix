{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "lens-family-th";
          version = "0.2.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Dan Burton 2012-2013";
        maintainer = "danburton.email@gmail.com";
        author = "Dan Burton";
        homepage = "http://github.com/DanBurton/lens-family-th#readme";
        url = "";
        synopsis = "Generate lens-family style lenses";
        description = "Due to a cabal/hackage defect, curly braces cannot be\nadequately displayed here. Please see\n<http://github.com/DanBurton/lens-family-th#readme>\nfor a proper description of this package.\n\n(See <https://github.com/haskell/cabal/issues/968>\nfor the ticket I created regarding the defect.)";
        buildType = "Simple";
      };
      components = {
        lens-family-th = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
          ];
        };
      };
    }