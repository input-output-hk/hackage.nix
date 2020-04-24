{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "keera-hails-reactive-wx"; version = "0.0.3.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ivan.perez@keera.es";
      author = "Ivan Perez";
      homepage = "http://www.keera.es/blog/community/";
      url = "";
      synopsis = "Haskell on Rails - Reactive Fields for WX widgets";
      description = "This package contains (incomplete) bindings to WX widget properties,\nturning them into Reactive Values that can be combined with and\nconnected to others with Reactive Rules.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."wxcore" or ((hsPkgs.pkgs-errors).buildDepError "wxcore"))
          (hsPkgs."wx" or ((hsPkgs.pkgs-errors).buildDepError "wx"))
          (hsPkgs."keera-hails-reactivevalues" or ((hsPkgs.pkgs-errors).buildDepError "keera-hails-reactivevalues"))
          ];
        buildable = true;
        };
      };
    }