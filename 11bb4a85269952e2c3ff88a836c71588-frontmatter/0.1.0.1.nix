{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "frontmatter";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "Copyright (c) 2015 Pedro Tacla Yamada";
        maintainer = "tacla.yamada@gmail.com";
        author = "Pedro Tacla Yamada";
        homepage = "https://github.com/yamadapc/haskell-frontmatter";
        url = "";
        synopsis = "Parses frontmatter as used in Jekyll markdown files.";
        description = "Provides a parser that'll parse the frontmatter only and\n. one that'll execute a YAML parser on it, so that it's a\n. YAML frontmatter parser.";
        buildType = "Simple";
      };
      components = {
        "frontmatter" = {
          depends  = [
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.yaml
          ];
        };
        tests = {
          "hspec" = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.attoparsec
              hsPkgs.base
              hsPkgs.yaml
              hsPkgs.bytestring
              hsPkgs.frontmatter
              hsPkgs.text
              hsPkgs.hspec
            ];
          };
        };
      };
    }