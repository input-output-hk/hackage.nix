{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "latex";
        version = "0.1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/LaTeX";
      url = "";
      synopsis = "Parse, format and process LaTeX files";
      description = "Currently the package only provides\nconversion between LaTeX escape sequences and Unicode characters.\nIt is used in the @bibtex@ package.\n\nIn the future we might add support\nfor formatting Haskell values in LaTeX markup\nfor automated report generation.\n\nSee the packages @HaTeX@ for LaTeX document generation\nand @pandoc@ for document analysis and generation in multiple markup languages.";
      buildType = "Simple";
    };
    components = {
      "latex" = {
        depends  = [
          (hsPkgs.containers)
          (hsPkgs.utility-ht)
          (hsPkgs.base)
        ];
      };
    };
  }