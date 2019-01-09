{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "visualize-cbn"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Well-Typed LLP";
      maintainer = "edsko@well-typed.com";
      author = "Edsko de Vries";
      homepage = "";
      url = "";
      synopsis = "Visualize CBN reduction";
      description = "CBN interpretation and visualization tool.\nExports in text format, coloured text (ANSI) or HTML/JavaScript.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "visualize-cbn" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ansi-terminal)
            (hsPkgs.blaze-html)
            (hsPkgs.blaze-markup)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.optparse-applicative)
            (hsPkgs.parsec)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            ];
          };
        };
      };
    }