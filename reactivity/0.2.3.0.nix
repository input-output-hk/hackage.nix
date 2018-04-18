{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "reactivity";
          version = "0.2.3.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "(c) 2015 by James Candy";
        maintainer = "info@alkalisoftware.net";
        author = "James Candy";
        homepage = "http://haskell.org/haskellwiki/reactive";
        url = "http://code.haskell.org/reactivity";
        synopsis = "(Yet another) alternate implementation of push-pull FRP. This is based on the Reactive package (http://haskell.org/haskellwiki/reactive).";
        description = "";
        buildType = "Simple";
      };
      components = {
        reactivity = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
            hsPkgs.random
            hsPkgs.Win32
            hsPkgs.Displayable
            hsPkgs.bmp
            hsPkgs.monad-loops
            hsPkgs.monads-tf
            hsPkgs.transformers
            hsPkgs.comonad
            hsPkgs.bytestring
            hsPkgs.array
            hsPkgs.ghc-prim
            hsPkgs.containers
            hsPkgs.ConcurrentUtils
            hsPkgs.parallel
            hsPkgs.list-extras
          ];
        };
      };
    }