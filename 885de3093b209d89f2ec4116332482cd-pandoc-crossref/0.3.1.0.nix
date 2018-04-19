{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pandoc-crossref";
          version = "0.3.1.0";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "root@livid.pp.ru";
        author = "Nikolay Yakimov";
        homepage = "https://github.com/lierdakil/pandoc-crossref#readme";
        url = "";
        synopsis = "Pandoc filter for cross-references";
        description = "pandoc-crossref is a pandoc filter for numbering figures, equations, tables and cross-references to them.";
        buildType = "Simple";
      };
      components = {
        pandoc-crossref = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.data-accessor
            hsPkgs.data-accessor-template
            hsPkgs.data-accessor-transformers
            hsPkgs.data-default
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.mtl
            hsPkgs.pandoc
            hsPkgs.pandoc-types
            hsPkgs.roman-numerals
            hsPkgs.syb
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.utility-ht
          ];
        };
        exes = {
          pandoc-crossref = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.data-accessor
              hsPkgs.data-accessor-template
              hsPkgs.data-accessor-transformers
              hsPkgs.data-default
              hsPkgs.deepseq
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.mtl
              hsPkgs.open-browser
              hsPkgs.optparse-applicative
              hsPkgs.pandoc
              hsPkgs.pandoc-crossref
              hsPkgs.pandoc-types
              hsPkgs.roman-numerals
              hsPkgs.syb
              hsPkgs.template-haskell
              hsPkgs.temporary
              hsPkgs.text
              hsPkgs.utility-ht
            ];
          };
        };
        tests = {
          test-integrative = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.data-accessor
              hsPkgs.data-accessor-template
              hsPkgs.data-accessor-transformers
              hsPkgs.data-default
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.hspec
              hsPkgs.mtl
              hsPkgs.pandoc
              hsPkgs.pandoc-crossref
              hsPkgs.pandoc-types
              hsPkgs.roman-numerals
              hsPkgs.syb
              hsPkgs.template-haskell
              hsPkgs.text
              hsPkgs.utility-ht
            ];
          };
          test-pandoc-crossref = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.data-accessor
              hsPkgs.data-accessor-template
              hsPkgs.data-accessor-transformers
              hsPkgs.data-default
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.hspec
              hsPkgs.mtl
              hsPkgs.pandoc
              hsPkgs.pandoc-types
              hsPkgs.roman-numerals
              hsPkgs.syb
              hsPkgs.template-haskell
              hsPkgs.text
              hsPkgs.utility-ht
            ];
          };
        };
      };
    }