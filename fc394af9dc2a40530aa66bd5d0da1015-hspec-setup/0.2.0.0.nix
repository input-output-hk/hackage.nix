{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hspec-setup";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "Copyright (c) 2015 Pedro Tacla Yamada";
      maintainer = "tacla.yamada@gmail.com";
      author = "Pedro Tacla Yamada";
      homepage = "https://github.com/yamadapc/haskell-hspec-setup";
      url = "";
      synopsis = "Add an hspec test-suite in one command";
      description = "@hspec-setup@ is a command-line tool for adding an hspec\ntest-suite with minimal work. See the\n<https://github.com/yamadapc/haskell-hspec-setup GitHub README>\nfor more information.";
      buildType = "Simple";
    };
    components = {
      "hspec-setup" = {
        depends  = [
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.pretty)
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.directory-tree)
          (hsPkgs.filepath)
          (hsPkgs.process)
          (hsPkgs.projectroot)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.split)
        ];
      };
      exes = {
        "hspec-setup" = {
          depends  = [
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.pretty)
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.directory-tree)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.projectroot)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.split)
            (hsPkgs.hspec-setup)
          ];
        };
      };
      tests = {
        "hspec" = {
          depends  = [
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.pretty)
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.directory-tree)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.projectroot)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.split)
            (hsPkgs.QuickCheck)
            (hsPkgs.language-dockerfile)
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.bytestring)
            (hsPkgs.cryptohash)
            (hsPkgs.hspec)
            (hsPkgs.hspec-setup)
          ];
        };
      };
    };
  }