{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "reflex-dom-helpers"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2016 Matthew Parsons";
      maintainer = "parsonsmatt@gmail.com";
      author = "Matthew Parsons";
      homepage = "https://github.com/layer-3-communications/reflex-dom-helpers";
      url = "";
      synopsis = "Html tag helpers for reflex-dom";
      description = "Allows one to write html tags as top level functions in reflex-dom,\nsuch as img instead of el \"img\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.reflex)
          (hsPkgs.reflex-dom-core)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          ];
        };
      tests = {
        "reflex-dom-helpers-test" = {
          depends = [ (hsPkgs.base) (hsPkgs.reflex-dom-helpers) ];
          };
        };
      };
    }