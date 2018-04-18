{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "frontmatter";
          version = "0.1.0.2";
        };
        license = "MIT";
        copyright = "Copyright (c) 2015 Pedro Tacla Yamada";
        maintainer = "tacla.yamada@gmail.com";
        author = "Pedro Tacla Yamada";
        homepage = "https://github.com/yamadapc/haskell-frontmatter";
        url = "";
        synopsis = "Parses frontmatter as used in Jekyll markdown files.";
        description = "Parses frontmatter as used in Jekyll markdown files.\n\nProvides a parser that'll parse the frontmatter only and\none that'll execute a YAML parser on it, so that it's a\nYAML frontmatter parser.";
        buildType = "Simple";
      };
      components = {
        frontmatter = {
          depends  = [
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.yaml
          ];
        };
        tests = {
          hspec = {
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