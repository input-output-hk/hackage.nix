{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
      identifier = { name = "yi"; version = "0.5.0.1"; };
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
      "library" = {};
      exes = {
        "yi" = {
          depends = (((((([
            (hsPkgs.Cabal)
            (hsPkgs.Diff)
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.mtl)
            (hsPkgs.process)
            (hsPkgs.old-locale)
            (hsPkgs.old-time)
            (hsPkgs.random)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
            (hsPkgs.fingertree)
            (hsPkgs.parsec)
            (hsPkgs.unix-compat)
            (hsPkgs.pureMD5)
            (hsPkgs.regex-base)
            (hsPkgs.regex-tdfa)
            (hsPkgs.rosezipper)
            (hsPkgs.utf8-string)
            ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs.unix)) ++ (pkgs.lib).optional (flags.vty) (hsPkgs.vty)) ++ (pkgs.lib).optional (flags.gtk) (hsPkgs.gtk)) ++ (pkgs.lib).optional (flags.pango) (hsPkgs.gtk)) ++ (pkgs.lib).optionals (flags.cocoa) [
            (hsPkgs.HOC)
            (hsPkgs.HOC-AppKit)
            (hsPkgs.HOC-Foundation)
            ]) ++ (pkgs.lib).optionals (flags.ghcapi) [
            (hsPkgs.ghc)
            (hsPkgs.haskell98)
            (hsPkgs.ghc-paths)
            ]) ++ (pkgs.lib).optional (flags.testing) (hsPkgs.QuickCheck);
          build-tools = [ ((hsPkgs.buildPackages).alex) ];
          };
        };
      };
    }