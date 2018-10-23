{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      ghcapi = false;
      vty = true;
      gtk = true;
      pango = true;
      cocoa = true;
      testing = true;
    };
    package = {
      specVersion = "1.4";
      identifier = {
        name = "yi";
        version = "0.4.3";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "yi-devel@googlegroups.com";
      author = "AUTHORS";
      homepage = "http://haskell.org/haskellwiki/Yi";
      url = "";
      synopsis = "The Haskell-Scriptable Editor";
      description = "Yi is a text editor written in Haskell and extensible in Haskell. The goal of the Yi project is\nto provide a flexible, powerful, and correct editor for haskell hacking.";
      buildType = "Simple";
    };
    components = {
      "yi" = {
        depends  = pkgs.lib.optional (flags.vty) (hsPkgs.vty);
      };
      exes = {
        "yi" = {
          depends  = (((((([
            (hsPkgs.Cabal)
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.process)
            (hsPkgs.old-locale)
            (hsPkgs.old-time)
            (hsPkgs.random)
            (hsPkgs.bytestring)
            (hsPkgs.fingertree)
            (hsPkgs.utf8-string)
            (hsPkgs.pureMD5)
            (hsPkgs.regex-base)
            (hsPkgs.regex-tdfa)
            (hsPkgs.parsec)
          ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix)) ++ pkgs.lib.optional (flags.vty) (hsPkgs.vty)) ++ pkgs.lib.optional (flags.gtk) (hsPkgs.gtk)) ++ pkgs.lib.optional (flags.pango) (hsPkgs.gtk)) ++ pkgs.lib.optionals (flags.cocoa) [
            (hsPkgs.HOC)
            (hsPkgs.HOC-AppKit)
            (hsPkgs.HOC-Foundation)
          ]) ++ pkgs.lib.optionals (flags.ghcapi) [
            (hsPkgs.ghc)
            (hsPkgs.haskell98)
          ]) ++ pkgs.lib.optional (flags.testing) (hsPkgs.QuickCheck);
          build-tools = [
            (hsPkgs.buildPackages.alex)
          ];
        };
      };
    };
  }