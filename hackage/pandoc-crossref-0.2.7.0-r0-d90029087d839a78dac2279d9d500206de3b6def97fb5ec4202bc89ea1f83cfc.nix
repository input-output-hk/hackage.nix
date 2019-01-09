{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "pandoc-crossref"; version = "0.2.7.0"; };
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.pandoc)
          (hsPkgs.pandoc-types)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.data-accessor)
          (hsPkgs.data-accessor-template)
          (hsPkgs.data-accessor-transformers)
          (hsPkgs.template-haskell)
          (hsPkgs.roman-numerals)
          (hsPkgs.syb)
          (hsPkgs.utility-ht)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.text)
          ];
        };
      exes = {
        "pandoc-crossref" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.pandoc)
            (hsPkgs.pandoc-types)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.data-accessor)
            (hsPkgs.data-accessor-template)
            (hsPkgs.data-accessor-transformers)
            (hsPkgs.template-haskell)
            (hsPkgs.roman-numerals)
            (hsPkgs.syb)
            (hsPkgs.utility-ht)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.text)
            (hsPkgs.pandoc-crossref)
            ];
          };
        };
      tests = {
        "test-integrative" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.pandoc)
            (hsPkgs.pandoc-types)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.data-accessor)
            (hsPkgs.data-accessor-template)
            (hsPkgs.data-accessor-transformers)
            (hsPkgs.template-haskell)
            (hsPkgs.roman-numerals)
            (hsPkgs.syb)
            (hsPkgs.utility-ht)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.text)
            (hsPkgs.pandoc-crossref)
            (hsPkgs.hspec)
            ];
          };
        "test-pandoc-crossref" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.pandoc)
            (hsPkgs.pandoc-types)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.data-accessor)
            (hsPkgs.data-accessor-template)
            (hsPkgs.data-accessor-transformers)
            (hsPkgs.template-haskell)
            (hsPkgs.roman-numerals)
            (hsPkgs.syb)
            (hsPkgs.utility-ht)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.text)
            (hsPkgs.hspec)
            ];
          };
        };
      };
    }