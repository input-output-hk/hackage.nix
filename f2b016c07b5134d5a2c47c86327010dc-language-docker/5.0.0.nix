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
        name = "language-docker";
        version = "5.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "Lukas Martinelli, Copyright (c) 2016,\nPedro Tacla Yamada, Copyright (c) 2016,\nJosé Lorenzo Rodríguez, Copyright (c) 2017";
      maintainer = "lorenzo@seatgeek.com";
      author = "Lukas Martinelli,\nPedro Tacla Yamada,\nJosé Lorenzo Rodríguez";
      homepage = "https://github.com/hadolint/language-docker#readme";
      url = "";
      synopsis = "Dockerfile parser, pretty-printer and embedded DSL";
      description = "All functions for parsing, printing and writting Dockerfiles are exported through @Language.Docker@. For more fine-grained operations look for specific modules that implement a certain functionality.\nSee the <https://github.com/hadolint/language-docker GitHub project> for the source-code and examples.";
      buildType = "Simple";
    };
    components = {
      "language-docker" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.free)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.pretty)
          (hsPkgs.split)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.th-lift)
          (hsPkgs.time)
        ];
      };
      tests = {
        "hspec" = {
          depends  = [
            (hsPkgs.Glob)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.free)
            (hsPkgs.hspec)
            (hsPkgs.language-docker)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.pretty)
            (hsPkgs.process)
            (hsPkgs.split)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.th-lift)
            (hsPkgs.time)
          ];
        };
      };
    };
  }