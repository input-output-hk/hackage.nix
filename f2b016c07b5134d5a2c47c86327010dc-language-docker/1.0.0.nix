{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "language-docker";
          version = "1.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "Lukas Martinelli, Copyright (c) 2016,\nPedro Tacla Yamada, Copyright (c) 2016,\nJosé Lorenzo Rodríguez, Copyright (c) 2017";
        maintainer = "me@lukasmartinelli.ch,\nlorenzo@seatgeek.com";
        author = "Lukas Martinelli,\nPedro Tacla Yamada,\nJosé Lorenzo Rodríguez";
        homepage = "https://github.com/hadolint/language-docker#readme";
        url = "";
        synopsis = "Dockerfile parser, pretty-printer and embedded DSL";
        description = "All functions for parsing, printing and writting Dockerfiles are exported through @Language.Docker@. For more fine-grained operations look for specific modules that implement a certain functionality.\nSee the <https://github.com/hadolint/language-dockerfile GitHub project> for the source-code and examples.";
        buildType = "Simple";
      };
      components = {
        "language-docker" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.parsec
            hsPkgs.pretty
            hsPkgs.split
            hsPkgs.free
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.template-haskell
            hsPkgs.th-lift
            hsPkgs.th-lift-instances
            hsPkgs.text
            hsPkgs.yaml
            hsPkgs.aeson
            hsPkgs.Glob
            hsPkgs.unordered-containers
            hsPkgs.directory
            hsPkgs.filepath
          ];
        };
        tests = {
          "hspec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.parsec
              hsPkgs.pretty
              hsPkgs.split
              hsPkgs.free
              hsPkgs.mtl
              hsPkgs.transformers
              hsPkgs.template-haskell
              hsPkgs.th-lift
              hsPkgs.th-lift-instances
              hsPkgs.text
              hsPkgs.yaml
              hsPkgs.aeson
              hsPkgs.Glob
              hsPkgs.unordered-containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.language-docker
              hsPkgs.Glob
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.process
              hsPkgs.HUnit
            ];
          };
        };
      };
    }