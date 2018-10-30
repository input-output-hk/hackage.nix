{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "reactivity";
        version = "0.3.0.0";
      };
      license = "LicenseRef-GPL";
      copyright = "(c) 2016 by James Candy";
      maintainer = "info@alkalisoftware.net";
      author = "James Candy";
      homepage = "http://www.alkalisoftware.net/Reactivity.html";
      url = "http://code.haskell.org/reactivity";
      synopsis = "An alternate implementation of push-pull FRP.";
      description = "An alternate implementation of push-pull FRP. This is based on the Reactive package (http://haskell.org/haskellwiki/reactive) (and the sources have been made available in accordance with the GPL [license] of that package).\n\nKnown problems with this version:\n\n* The UI library tends to freeze after a few seconds of use. Don't know whether the problem is semantical or a deadlock. The core library works correctly though.\n\n* There seems to be a speed problem that I can't identify, but it doesn't appear to be fundamental.\n\n* UI library is currently on Windows only, but there are plans....";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.random)
          (hsPkgs.Win32)
          (hsPkgs.bmp)
          (hsPkgs.monad-loops)
          (hsPkgs.monads-tf)
          (hsPkgs.transformers)
          (hsPkgs.comonad)
          (hsPkgs.bytestring)
          (hsPkgs.array)
          (hsPkgs.ghc-prim)
          (hsPkgs.containers)
          (hsPkgs.ConcurrentUtils)
          (hsPkgs.parallel)
          (hsPkgs.list-extras)
        ];
        libs = [
          (pkgs."gdi32")
          (pkgs."comdlg32")
          (pkgs."winspool")
          (pkgs."comctl32")
        ];
      };
    };
  }