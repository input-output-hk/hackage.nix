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
        name = "cascading";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 Ertugrul Söylemez";
      maintainer = "Ertugrul Söylemez <es@ertes.de>";
      author = "Ertugrul Söylemez <es@ertes.de>";
      homepage = "";
      url = "";
      synopsis = "DSL for HTML CSS (Cascading Style Sheets)";
      description = "This library implements an HTML-specific domain-specific language\nfor cascading style sheets (CSS) in the spirit of blaze-html.  See\nthe documentation of the Data.CSS module for a tutorial.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.colour)
          (hsPkgs.containers)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.utf8-string)
          (hsPkgs.web-routes)
        ];
      };
    };
  }