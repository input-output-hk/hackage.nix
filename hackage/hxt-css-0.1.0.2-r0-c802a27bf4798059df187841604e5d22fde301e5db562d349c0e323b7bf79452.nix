{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hxt-css";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Marios Titas <rednebΑΤgmxDΟΤcom>";
      author = "Marios Titas <rednebΑΤgmxDΟΤcom>";
      homepage = "https://github.com/redneb/hxt-css";
      url = "";
      synopsis = "CSS selectors for HXT";
      description = "This package makes it possible to easily traverse (X)HTML/XML documents\nusing CSS selectors. It supports all CSS level 3 selectors except the\nones that do not make sense outside a web browser (e.g. such as @:hover@\nor @::first-letter@). Also, there is no support for namespaced selectors.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hxt)
          (hsPkgs.parsec)
          (hsPkgs.split)
        ];
      };
      exes = {
        "hxt-css" = {
          depends  = pkgs.lib.optionals (!(!flags.examples)) [
            (hsPkgs.base)
            (hsPkgs.hxt-css)
            (hsPkgs.hxt)
          ];
        };
      };
    };
  }