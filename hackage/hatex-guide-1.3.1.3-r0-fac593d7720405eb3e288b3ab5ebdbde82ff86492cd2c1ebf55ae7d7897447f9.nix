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
      specVersion = "1.6";
      identifier = {
        name = "hatex-guide";
        version = "1.3.1.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Daniel Díaz (dhelta `dot` diaz `at` gmail `dot` com)";
      author = "Daniel Díaz";
      homepage = "";
      url = "";
      synopsis = "HaTeX User's Guide.";
      description = "The HaTeX User's Guide is a manual explaining the\nHaTeX library (<http://hackage.haskell.org/package/HaTeX>).\nThis library can be used to output the guide in different formats.\nA compiled pdf version of the latex output can be found at\n<http://daniel-diaz.github.com/projects/hatex/hatex-guide.pdf>.\nThe online HTML version is in\n<http://daniel-diaz.github.com/projects/hatex/hatex-guide.html>.\nSee the README file (<https://github.com/Daniel-Diaz/hatex-guide/blob/master/README.md>)\nfor more details.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.HaTeX)
          (hsPkgs.text)
          (hsPkgs.filepath)
          (hsPkgs.parsec)
          (hsPkgs.directory)
          (hsPkgs.blaze-html)
          (hsPkgs.transformers)
          (hsPkgs.time)
        ];
      };
    };
  }