{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "language-hcl";
          version = "0.1.1.0";
        };
        license = "MIT";
        copyright = "Copyright (c) 2016 Pedro Tacla Yamada";
        maintainer = "tacla.yamada@gmail.com";
        author = "Pedro Tacla Yamada";
        homepage = "https://github.com/beijaflor-io/haskell-language-hcl#readme";
        url = "";
        synopsis = "hcl and conf parsers and pretty-printers for the Haskell programming language.";
        description = "@language-hcl@ contains HCL (Hashicorp Configuration Language) parsers and pretty-printers for the Haskell programming language.\n\"Data.HCL\" exports all the API surface in the package.";
        buildType = "Simple";
      };
      components = {
        language-hcl = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.megaparsec
            hsPkgs.pretty
            hsPkgs.scientific
            hsPkgs.semigroups
            hsPkgs.text
            hsPkgs.unordered-containers
          ];
        };
        tests = {
          hspec = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.hspec
              hsPkgs.language-hcl
              hsPkgs.megaparsec
              hsPkgs.hspec-megaparsec
              hsPkgs.pretty
              hsPkgs.semigroups
              hsPkgs.text
              hsPkgs.transformers
            ];
          };
        };
        benchmarks = {
          hcl-benchmark = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.language-hcl
              hsPkgs.text
            ];
          };
        };
      };
    }