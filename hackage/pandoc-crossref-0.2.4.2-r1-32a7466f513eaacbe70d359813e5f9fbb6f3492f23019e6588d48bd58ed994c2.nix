{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "pandoc-crossref";
        version = "0.2.4.2";
      };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "root@livid.pp.ru";
      author = "Nikolay Yakimov";
      homepage = "";
      url = "";
      synopsis = "Pandoc filter for cross-references";
      description = "pandoc-crossref is a pandoc filter for numbering figures, equations, tables and cross-references to them.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
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
        ];
      };
      exes = {
        "pandoc-crossref" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.pandoc-crossref)
            (hsPkgs.pandoc)
            (hsPkgs.pandoc-types)
          ];
        };
      };
      tests = {
        "test-pandoc-crossref" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.pandoc-crossref)
            (hsPkgs.hspec)
            (hsPkgs.pandoc)
            (hsPkgs.pandoc-types)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.data-accessor-template)
            (hsPkgs.syb)
            (hsPkgs.roman-numerals)
            (hsPkgs.template-haskell)
            (hsPkgs.utility-ht)
            (hsPkgs.data-accessor)
            (hsPkgs.data-accessor-transformers)
          ];
        };
        "test-integrative" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.pandoc)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.pandoc-crossref)
          ];
        };
      };
    };
  }