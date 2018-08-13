{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "wild-bind-indicator";
        version = "0.1.0.1";
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