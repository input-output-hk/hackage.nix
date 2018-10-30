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
      specVersion = "1.6";
      identifier = {
        name = "hpage";
        version = "0.10.2";
      };
      license = "BSD-3-Clause";
      copyright = "2009 Fernando \"Brujo\" Benavides";
      maintainer = "greenmellon@gmail.com";
      author = "Fernando \"Brujo\" Benavides";
      homepage = "http://haskell.hpage.com";
      url = "http://code.haskell.org/hpage";
      synopsis = "A scrapbook for Haskell developers";
      description = "λPage is targeted at those haskell developers which also like to work with dynamic GUIs and wish to have something like Smalltalk's Workspace or jPage for Java. Using λPage developers can write haskell expressions, evaluate and test them, load, unload and (of course) reload modules and then, re-evaluate the same expressions. Developed over wxWidgets, λPage is multi-platform by nature and works in every scenario where ghc and wxWidgets work.";
      buildType = "Custom";
    };
    components = {
      exes = {
        "hpage" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.mtl)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.Cabal)
            (hsPkgs.Cabal)
            (hsPkgs.cabal-macosx)
            (hsPkgs.cabal-macosx)
            (hsPkgs.FindBin)
            (hsPkgs.FindBin)
            (hsPkgs.time)
            (hsPkgs.time)
            (hsPkgs.hint)
            (hsPkgs.hint)
            (hsPkgs.eprocess)
            (hsPkgs.eprocess)
            (hsPkgs.hint-server)
            (hsPkgs.hint-server)
            (hsPkgs.wxcore)
            (hsPkgs.wxcore)
            (hsPkgs.wx)
            (hsPkgs.wx)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.monad-loops)
            (hsPkgs.monad-loops)
            (hsPkgs.containers)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.process)
            (hsPkgs.MonadCatchIO-mtl)
            (hsPkgs.MonadCatchIO-mtl)
          ];
        };
      };
    };
  }