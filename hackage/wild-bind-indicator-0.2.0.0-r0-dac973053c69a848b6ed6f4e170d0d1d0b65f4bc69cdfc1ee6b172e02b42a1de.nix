{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "wild-bind-indicator";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Toshio Ito <debug.ito@gmail.com>";
      author = "Toshio Ito <debug.ito@gmail.com>";
      homepage = "https://github.com/debug-ito/wild-bind";
      url = "";
      synopsis = "Graphical indicator for WildBind";
      description = "Graphical indicator for WildBind. See <https://github.com/debug-ito/wild-bind>";
      buildType = "Simple";
    };
    components = {
      "wild-bind-indicator" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.wild-bind)
          (hsPkgs.transformers)
          (hsPkgs.gtk)
          (hsPkgs.text)
          (hsPkgs.containers)
        ];
      };
    };
  }