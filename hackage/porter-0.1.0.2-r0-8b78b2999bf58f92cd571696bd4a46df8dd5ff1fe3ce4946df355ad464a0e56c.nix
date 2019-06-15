{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "porter"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mark Wotton <mwotton@gmail.com>, Laura Dietz <dietz@smart-cactus.org>";
      author = "Dmitry Antonyuk <lomeo@mail.ru>";
      homepage = "";
      url = "";
      synopsis = "Implementation of the Porter stemming algorithm";
      description = "Sourced from http://tartarus.org/~martin/PorterStemmer";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }