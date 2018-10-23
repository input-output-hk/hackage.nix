{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "hpage";
        version = "0.6.0";
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
            (hsPkgs.monad-loops)
            (hsPkgs.monad-loops)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.MonadCatchIO-mtl)
            (hsPkgs.MonadCatchIO-mtl)
            (hsPkgs.containers)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.directory)
            (hsPkgs.wxcore)
            (hsPkgs.wxcore)
            (hsPkgs.wx)
            (hsPkgs.wx)
            (hsPkgs.filepath)
            (hsPkgs.filepath)
            (hsPkgs.Cabal)
            (hsPkgs.Cabal)
            (hsPkgs.hint)
            (hsPkgs.hint)
            (hsPkgs.eprocess)
            (hsPkgs.eprocess)
            (hsPkgs.hint-server)
            (hsPkgs.hint-server)
            (hsPkgs.time)
            (hsPkgs.time)
          ];
        };
      };
    };
  }