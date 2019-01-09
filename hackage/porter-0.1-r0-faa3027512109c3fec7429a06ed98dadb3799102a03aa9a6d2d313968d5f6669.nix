{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "porter"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mark Wotton, <mwotton@gmail.com>";
      author = "Dmitry Antonyuk <lomeo@mail.ru>";
      homepage = "";
      url = "";
      synopsis = "Implementation of the Porter stemming algorithm";
      description = "Sourced from http://tartarus.org/~martin/PorterStemmer";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.haskell2010) ]; }; };
    }