{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      dockerfmt = false;
      hadolint = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "language-dockerfile";
          version = "0.3.1.0";
        };
        license = "GPL-3.0-only";
        copyright = "Lukas Martinelli, Copyright (c) 2016,\nPedro Tacla Yamada, Copyright (c) 2016";
        maintainer = "tacla.yamada@gmail.com";
        author = "Lukas Martinelli,\nPedro Tacla Yamada";
        homepage = "https://github.com/beijaflor-io/language-dockerfile#readme";
        url = "";
        synopsis = "Dockerfile linter, parser, pretty-printer and embedded DSL";
        description = "Forked from @hadolint@.\n\nAll functions for parsing, printing and writting Dockerfiles are exported through @Language.Dockerfile@. For more fine-grained operations look for specific modules that implement a certain functionality.\n\nThere are two flags in this package, which enable building two executables:\n\n- @hadolint@ Enables building the @hadolint@ executable, though you might prefer to use the hadolint package directly\n- @dockerfmt@ Builds example pretty-printer usage, which reads a Dockerfile and pretty-prints it to stdout\n\nSee the <https://github.com/beijaflor-io/haskell-language-dockerfile GitHub project> for the source-code and examples.";
        buildType = "Simple";
      };
      components = {
        "language-dockerfile" = {
          depends  = [
            hsPkgs.ShellCheck
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
          ];
        };
        exes = {
          "dockerfmt" = {
            depends  = [
              hsPkgs.ShellCheck
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
              hsPkgs.language-dockerfile
            ];
          };
          "hadolint" = {
            depends  = [
              hsPkgs.ShellCheck
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
              hsPkgs.language-dockerfile
            ];
          };
        };
        tests = {
          "hadolint-unit-tests" = {
            depends  = [
              hsPkgs.ShellCheck
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
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
            ];
          };
          "hspec" = {
            depends  = [
              hsPkgs.ShellCheck
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
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.language-dockerfile
              hsPkgs.Glob
              hsPkgs.directory
              hsPkgs.filepath
            ];
          };
        };
      };
    }