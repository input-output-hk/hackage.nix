{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      scion = false;
      ghcapi = false;
      vty = true;
      pango = true;
      cocoa = true;
      gnome = true;
      testing = true;
      };
    package = {
      specVersion = "1.6";
      identifier = { name = "yi"; version = "0.6.2.3"; };
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
          depends = ((((((([
            (hsPkgs.Cabal)
            (hsPkgs.Diff)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.old-locale)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.derive)
            (hsPkgs.data-accessor)
            (hsPkgs.data-accessor-monads-fd)
            (hsPkgs.data-accessor-template)
            (hsPkgs.dlist)
            (hsPkgs.dyre)
            (hsPkgs.filepath)
            (hsPkgs.fingertree)
            (hsPkgs.ghc-paths)
            (hsPkgs.hint)
            (hsPkgs.monads-fd)
            (hsPkgs.pointedlist)
            (hsPkgs.pureMD5)
            (hsPkgs.random)
            (hsPkgs.regex-base)
            (hsPkgs.regex-tdfa)
            (hsPkgs.rosezipper)
            (hsPkgs.split)
            (hsPkgs.template-haskell)
            (hsPkgs.time)
            (hsPkgs.utf8-string)
            (hsPkgs.uniplate)
            (hsPkgs.unix-compat)
            ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs.unix)) ++ (pkgs.lib).optional (flags.vty && !system.isWindows) (hsPkgs.vty)) ++ (pkgs.lib).optionals (flags.pango) ([
            (hsPkgs.gtk)
            (hsPkgs.glib)
            ] ++ (pkgs.lib).optional (flags.gnome) (hsPkgs.gconf))) ++ (pkgs.lib).optionals (flags.cocoa) [
            (hsPkgs.HOC)
            (hsPkgs.HOC-AppKit)
            (hsPkgs.HOC-Foundation)
            ]) ++ (pkgs.lib).optionals (flags.scion) [
            (hsPkgs.ghc)
            (hsPkgs.ghc-syb)
            (hsPkgs.scion)
            ]) ++ (pkgs.lib).optionals (flags.ghcapi) [
            (hsPkgs.ghc)
            (hsPkgs.old-time)
            ]) ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs.cautious-file)) ++ (pkgs.lib).optionals (flags.testing) [
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            ];
          build-tools = [ ((hsPkgs.buildPackages).alex) ];
          };
        };
      };
    }