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
        name = "reflex-dom-helpers";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Matthew Parsons";
      maintainer = "parsonsmatt@gmail.com";
      author = "Matthew Parsons";
      homepage = "https://github.com/layer-3-communications/reflex-dom-helpers";
      url = "";
      synopsis = "Element tag helpers for working with reflex-dom";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.reflex)
          (hsPkgs.reflex-dom)
          (hsPkgs.template-haskell)
        ];
      };
      tests = {
        "reflex-dom-helpers-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.reflex-dom-helpers)
          ];
        };
      };
    };
  }