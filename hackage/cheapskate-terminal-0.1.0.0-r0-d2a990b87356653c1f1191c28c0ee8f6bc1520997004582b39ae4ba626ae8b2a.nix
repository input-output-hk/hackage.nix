{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "cheapskate-terminal";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2015 Pedro Tacla Yamada";
      maintainer = "tacla.yamada@gmail.com";
      author = "Pedro Tacla Yamada";
      homepage = "http://github.com/yamadapc/cheapskate-terminal#readme";
      url = "";
      synopsis = "Initial project template from stack";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "cheapskate-terminal" = {
        depends  = [
          (hsPkgs.ansi-terminal)
          (hsPkgs.base)
          (hsPkgs.cheapskate)
          (hsPkgs.data-default)
          (hsPkgs.directory)
          (hsPkgs.hpygments)
          (hsPkgs.hscolour)
          (hsPkgs.terminal-size)
          (hsPkgs.text)
        ];
      };
      exes = {
        "cheapskate-terminal" = {
          depends  = [
            (hsPkgs.ansi-terminal)
            (hsPkgs.base)
            (hsPkgs.cheapskate)
            (hsPkgs.cheapskate-terminal)
            (hsPkgs.data-default)
            (hsPkgs.directory)
            (hsPkgs.hpygments)
            (hsPkgs.hscolour)
            (hsPkgs.terminal-size)
            (hsPkgs.text)
          ];
        };
      };
      tests = {
        "cheapskate-terminal-test" = {
          depends  = [
            (hsPkgs.ansi-terminal)
            (hsPkgs.base)
            (hsPkgs.cheapskate)
            (hsPkgs.cheapskate-terminal)
            (hsPkgs.data-default)
            (hsPkgs.directory)
            (hsPkgs.hpygments)
            (hsPkgs.hscolour)
            (hsPkgs.terminal-size)
            (hsPkgs.text)
          ];
        };
      };
    };
  }