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
        version = "0.1.1.0";
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
      exes = {
        "hspec-setup" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.projectroot)
          ];
        };
      };
    };
  }