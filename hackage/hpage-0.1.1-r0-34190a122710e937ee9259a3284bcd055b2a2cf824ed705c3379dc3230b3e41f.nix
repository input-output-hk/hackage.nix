{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hpage"; version = "0.1.1"; };
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
            (hsPkgs.Cabal)
            (hsPkgs.mtl)
            (hsPkgs.MonadCatchIO-mtl)
            (hsPkgs.syb)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.old-locale)
            (hsPkgs.old-time)
            (hsPkgs.directory)
            (hsPkgs.pretty)
            (hsPkgs.process)
            (hsPkgs.bytestring)
            (hsPkgs.random)
            (hsPkgs.haskell98)
            (hsPkgs.hpc)
            (hsPkgs.packedstring)
            (hsPkgs.template-haskell)
            (hsPkgs.ghc)
            (hsPkgs.base)
            (hsPkgs.haskell-src)
            (hsPkgs.stm)
            (hsPkgs.wxcore)
            (hsPkgs.wx)
            (hsPkgs.ghc-mtl)
            (hsPkgs.ghc-paths)
            (hsPkgs.utf8-string)
            (hsPkgs.hint)
            (hsPkgs.monad-loops)
            (hsPkgs.cpphs)
            (hsPkgs.haskell-src-exts)
            ] ++ (if system.isWindows
            then [ (hsPkgs.Win32) ]
            else [ (hsPkgs.unix) ]);
          libs = (pkgs.lib).optional (system.isWindows) (pkgs."kernel32");
          };
        };
      };
    }