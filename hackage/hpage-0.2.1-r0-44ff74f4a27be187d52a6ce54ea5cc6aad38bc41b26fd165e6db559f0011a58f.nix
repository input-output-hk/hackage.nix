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
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "2009 Fernando \"Brujo\" Benavides";
      maintainer = "greenmellon@gmail.com";
      author = "Fernando \"Brujo\" Benavides";
      homepage = "http://elbrujohalcon.github.com/hPage/";
      url = "http://code.haskell.org/hpage";
      synopsis = "A scrapbook for Haskell developers";
      description = "hPage is targeted at those haskell developers which also like to work with dynamic GUIs and wish to have something like Smalltalk's Workbook or jPage for Java. Using hPage developers can write haskell expressions, evaluate and test them, load, unload and (of course) reload modules and then, re-evaluate the same expressions (ghci anyone?). Developed over wxWidgets, hPage is multi-platform by nature and works in every scenario where ghc and wxWidgets work.";
      buildType = "Custom";
    };
    components = {
      exes = {
        "hpage" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.mtl)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.hint)
            (hsPkgs.hint)
            (hsPkgs.MonadCatchIO-mtl)
            (hsPkgs.MonadCatchIO-mtl)
            (hsPkgs.monad-loops)
            (hsPkgs.monad-loops)
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
            (hsPkgs.MissingH)
            (hsPkgs.MissingH)
          ];
        };
      };
    };
  }