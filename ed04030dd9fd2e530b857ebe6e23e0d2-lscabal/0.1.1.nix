{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      small_base = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "lscabal";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dons@galois.com";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/lscabal";
      url = "";
      synopsis = "List exported modules from a set of .cabal files";
      description = "List exported modules from a set of .cabal files\n\n> \$ lscabal http://code.haskell.org/xmonad/xmonad.cabal\n> XMonad\n> XMonad.Main\n> XMonad.Core\n> XMonad.Config\n> XMonad.Layout\n> XMonad.ManageHook\n> XMonad.Operations\n> XMonad.StackSet\n";
      buildType = "Simple";
    };
    components = {
      exes = {
        "lscabal" = {
          depends  = [
            (hsPkgs.Cabal)
            (hsPkgs.filepath)
          ] ++ (if _flags.small_base
            then [
              (hsPkgs.base)
              (hsPkgs.pretty)
              (hsPkgs.process)
              (hsPkgs.directory)
              (hsPkgs.containers)
              (hsPkgs.bytestring)
            ]
            else [ (hsPkgs.base) ]);
        };
      };
    };
  }