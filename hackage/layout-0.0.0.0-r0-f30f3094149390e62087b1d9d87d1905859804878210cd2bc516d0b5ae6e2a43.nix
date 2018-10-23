{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "layout";
        version = "0.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hackage@roberthensing.nl";
      author = "Robert Hensing";
      homepage = "";
      url = "";
      synopsis = "Turn values into pretty text or markup";
      description = "A library for turning values into text or markup. Flexibility\nis achieved by separating the semantics from the formatting\nimplementation. This way, a function can output, for example,\na table, which can then be rendered to any format.\nThis library provides 'standard' objects that can be formatted,\nin module @Text.Layout.Objects@. It also provides data types for\na few formats. These data types are glued together with\ninstances of @Convertible@";
      buildType = "Simple";
    };
    components = {
      "layout" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.convertible)
          (hsPkgs.hinduce-missingh)
        ];
      };
    };
  }