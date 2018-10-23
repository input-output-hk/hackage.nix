{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      old-base = false;
      bytestring-in-base = true;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "cabal-install-ghc72";
        version = "0.10.4";
      };
      license = "BSD-3-Clause";
      copyright = "2005 Lemmih <lemmih@gmail.com>\n2006 Paolo Martini <paolo@nemail.it>\n2007 Bjorn Bringert <bjorn@bringert.net>\n2007 Isaac Potoczny-Jones <ijones@syntaxpolice.org>\n2007-2011 Duncan Coutts <duncan@community.haskell.org>";
      maintainer = "Tony Hannan <tony@10gen.com>";
      author = "Lemmih <lemmih@gmail.com>\nPaolo Martini <paolo@nemail.it>\nBjorn Bringert <bjorn@bringert.net>\nIsaac Potoczny-Jones <ijones@syntaxpolice.org>\nDuncan Coutts <duncan@community.haskell.org>";
      homepage = "http://www.haskell.org/cabal/";
      url = "";
      synopsis = "Temporary version of cabal-install for ghc-7.2";
      description = "The \\'cabal\\' command-line program simplifies the process of managing\nHaskell software by automating the fetching, configuration, compilation\nand installation of Haskell libraries and programs.\n\ncabal-install-0.10.2 does not build with the packages that come with ghc-7.2.\nThis package is a copy of cabal-install-0.10.2 with dependency version changes made in\nthe cabal file and the bootstrap.sh file to be compatible with ghc-7.2 packages.\nThanks to beastaugh on github for describing these changes at https://gist.github.com/1169332.\nThis package will be removed once a new version of cabal-install comes\nout that is compatible with the next version of ghc, 7.4.\n\nKnown bug: cabal sdist does not work with the version. You must build your own source\npackage using tar czf.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cabal" = {
          depends  = (([
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.filepath)
            (hsPkgs.network)
            (hsPkgs.HTTP)
            (hsPkgs.zlib)
            (hsPkgs.time)
          ] ++ (if flags.old-base
            then [ (hsPkgs.base) ]
            else [
              (hsPkgs.base)
              (hsPkgs.process)
              (hsPkgs.directory)
              (hsPkgs.pretty)
              (hsPkgs.random)
              (hsPkgs.containers)
              (hsPkgs.array)
              (hsPkgs.old-time)
            ])) ++ (if flags.bytestring-in-base
            then [ (hsPkgs.base) ]
            else [
              (hsPkgs.base)
              (hsPkgs.bytestring)
            ])) ++ (if system.isWindows
            then [ (hsPkgs.Win32) ]
            else [ (hsPkgs.unix) ]);
        };
      };
    };
  }