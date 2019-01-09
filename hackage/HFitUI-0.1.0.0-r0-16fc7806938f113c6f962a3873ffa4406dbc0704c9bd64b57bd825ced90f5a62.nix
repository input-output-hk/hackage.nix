{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "HFitUI"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 QSpider";
      maintainer = "iqsf@ya.ru";
      author = "Pavel";
      homepage = "https://github.com/iqsf/HFitUI.git";
      url = "";
      synopsis = "The library for generating a graphical interface on the web";
      description = "The library for generating a graphical interface on the web for the Haskell programming language.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.blaze-html)
          (hsPkgs.blaze-markup)
          (hsPkgs.mtl)
          (hsPkgs.MissingH)
          (hsPkgs.process)
          (hsPkgs.random)
          (hsPkgs.shakespeare)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.uuid)
          ];
        };
      exes = {
        "HFitUI-exe" = { depends = [ (hsPkgs.base) (hsPkgs.HFitUI) ]; };
        };
      tests = {
        "HFitUI-test" = { depends = [ (hsPkgs.base) (hsPkgs.HFitUI) ]; };
        };
      };
    }