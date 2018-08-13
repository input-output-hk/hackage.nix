{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      pango = false;
      vty = true;
      profiling = false;
      eventlog = false;
      testing = true;
      hint = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.20";
      identifier = {
        name = "yi";
        version = "0.12.5";
      };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "yi-devel@googlegroups.com";
      author = "AUTHORS";
      homepage = "https://yi-editor.github.io";
      url = "";
      synopsis = "The Haskell-Scriptable Editor";
      description = "Yi is a text editor written in Haskell and extensible in Haskell. The goal of the Yi project is\nto provide a flexible, powerful, and correct editor for haskell hacking.";
      buildType = "Simple";
    };
    components = {
      "yi" = {
        depends  = ((((([
          (hsPkgs.Cabal)
          (hsPkgs.array)
          (hsPkgs.binary)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.process)
          (hsPkgs.old-locale)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.dynamic-state)
          (hsPkgs.data-default)
          (hsPkgs.lens)
          (hsPkgs.dlist)
          (hsPkgs.dyre)
          (hsPkgs.filepath)
          (hsPkgs.hashable)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.pointedlist)
          (hsPkgs.text-icu)
          (hsPkgs.safe)
          (hsPkgs.split)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unix-compat)
          (hsPkgs.unordered-containers)
          (hsPkgs.xdg-basedir)
          (hsPkgs.transformers-base)
          (hsPkgs.semigroups)
          (hsPkgs.word-trie)
          (hsPkgs.yi-language)
          (hsPkgs.oo-prototypes)
          (hsPkgs.yi-rope)
          (hsPkgs.exceptions)
        ] ++ pkgs.lib.optional (_flags.hint) (hsPkgs.hint)) ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix)) ++ pkgs.lib.optional (system.isWindows) (hsPkgs.Win32)) ++ pkgs.lib.optionals (_flags.testing) [
          (hsPkgs.QuickCheck)
          (hsPkgs.random)
        ]) ++ pkgs.lib.optionals (_flags.pango) [
          (hsPkgs.gtk)
          (hsPkgs.glib)
          (hsPkgs.pango)
        ]) ++ pkgs.lib.optionals (_flags.vty) [
          (hsPkgs.vty)
          (hsPkgs.stm)
        ];
      };
      exes = {
        "yi" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.yi)
          ];
        };
      };
      tests = {
        "test-suite" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.lens)
            (hsPkgs.semigroups)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.text)
            (hsPkgs.yi-language)
            (hsPkgs.yi-rope)
            (hsPkgs.yi)
          ];
        };
      };
    };
  }