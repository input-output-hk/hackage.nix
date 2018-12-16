{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "list-prompt";
        version = "0.1.0.0";
      };
      license = "GPL-2.0-only";
      copyright = "(c) 2014 Pedro Tacla Yamada";
      maintainer = "tacla.yamada@gmail.com";
      author = "Pedro Tacla Yamada";
      homepage = "https://github.com/yamadapc/list-prompt.git";
      url = "";
      synopsis = "A simple list prompt UI for the terminal.";
      description = "See https://github.com/yamadapc/list-prompt";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.ansi-terminal)
          (hsPkgs.base)
          (hsPkgs.data-default)
          (hsPkgs.terminal-size)
        ];
      };
      exes = {
        "simple-demo" = {
          depends = [
            (hsPkgs.ansi-terminal)
            (hsPkgs.base)
            (hsPkgs.data-default)
            (hsPkgs.terminal-size)
          ];
        };
      };
      tests = {
        "hspec" = {
          depends = [
            (hsPkgs.ansi-terminal)
            (hsPkgs.base)
            (hsPkgs.data-default)
            (hsPkgs.terminal-size)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }