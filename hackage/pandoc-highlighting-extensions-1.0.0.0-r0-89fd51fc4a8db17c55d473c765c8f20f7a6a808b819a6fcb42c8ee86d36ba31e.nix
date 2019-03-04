{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = {
        name = "pandoc-highlighting-extensions";
        version = "1.0.0.0";
        };
      license = "MIT";
      copyright = "2018 Typeclass Consulting, LLC";
      maintainer = "Chris Martin, Julie Moronuki";
      author = "Chris Martin";
      homepage = "https://github.com/typeclasses/pandoc-highlighting-ext";
      url = "";
      synopsis = "Syntax highlighting customization for Pandoc";
      description = "This package adapts the @skylighting-modding@ and\n@skylighting-extensions@ packages for use with Pandoc.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.data-default-class)
          (hsPkgs.pandoc)
          (hsPkgs.skylighting-core)
          (hsPkgs.skylighting-extensions)
          (hsPkgs.skylighting-modding)
          (hsPkgs.text)
          ];
        };
      };
    }