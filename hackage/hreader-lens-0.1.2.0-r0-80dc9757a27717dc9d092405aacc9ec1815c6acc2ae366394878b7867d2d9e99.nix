{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hreader-lens"; version = "0.1.2.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "denis.redozubov@gmail.com";
      author = "Denis Redozubov";
      homepage = "http://github.com/dredozubov/hreader-lens";
      url = "";
      synopsis = "Optics for hreader package";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."comonad" or ((hsPkgs.pkgs-errors).buildDepError "comonad"))
          (hsPkgs."hreader" or ((hsPkgs.pkgs-errors).buildDepError "hreader"))
          (hsPkgs."hset" or ((hsPkgs.pkgs-errors).buildDepError "hset"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."lens-action" or ((hsPkgs.pkgs-errors).buildDepError "lens-action"))
          (hsPkgs."profunctors" or ((hsPkgs.pkgs-errors).buildDepError "profunctors"))
          ];
        buildable = true;
        };
      };
    }