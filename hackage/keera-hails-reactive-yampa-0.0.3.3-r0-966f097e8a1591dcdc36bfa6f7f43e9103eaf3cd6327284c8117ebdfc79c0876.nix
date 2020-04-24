{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "keera-hails-reactive-yampa";
        version = "0.0.3.3";
        };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ivan.perez@keera.co.uk";
      author = "Ivan Perez";
      homepage = "http://www.keera.es/blog/community/";
      url = "";
      synopsis = "Haskell on Rails - FRP Yampa Signal Functions as RVs";
      description = "Yampa-driven Functional Reactive Signal Functions,\nas reactive values.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."keera-hails-reactivevalues" or ((hsPkgs.pkgs-errors).buildDepError "keera-hails-reactivevalues"))
          (hsPkgs."keera-callbacks" or ((hsPkgs.pkgs-errors).buildDepError "keera-callbacks"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."Yampa" or ((hsPkgs.pkgs-errors).buildDepError "Yampa"))
          ];
        buildable = true;
        };
      };
    }