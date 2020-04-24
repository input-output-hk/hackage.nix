{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "opaleye-trans"; version = "0.4.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Bitnomial, Inc";
      maintainer = "wraithm@gmail.com";
      author = "Matthew Wraith";
      homepage = "https://github.com/WraithM/opaleye-trans";
      url = "";
      synopsis = "A monad transformer for Opaleye";
      description = "A monad transformer for Opaleye";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."opaleye" or ((hsPkgs.pkgs-errors).buildDepError "opaleye"))
          (hsPkgs."postgresql-simple" or ((hsPkgs.pkgs-errors).buildDepError "postgresql-simple"))
          (hsPkgs."product-profunctors" or ((hsPkgs.pkgs-errors).buildDepError "product-profunctors"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          ];
        buildable = true;
        };
      exes = {
        "opaleye-rosetree" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."opaleye" or ((hsPkgs.pkgs-errors).buildDepError "opaleye"))
            (hsPkgs."opaleye-trans" or ((hsPkgs.pkgs-errors).buildDepError "opaleye-trans"))
            (hsPkgs."postgresql-simple" or ((hsPkgs.pkgs-errors).buildDepError "postgresql-simple"))
            (hsPkgs."product-profunctors" or ((hsPkgs.pkgs-errors).buildDepError "product-profunctors"))
            ];
          buildable = true;
          };
        "opaleye-rosetree2" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."opaleye" or ((hsPkgs.pkgs-errors).buildDepError "opaleye"))
            (hsPkgs."opaleye-trans" or ((hsPkgs.pkgs-errors).buildDepError "opaleye-trans"))
            (hsPkgs."postgresql-simple" or ((hsPkgs.pkgs-errors).buildDepError "postgresql-simple"))
            (hsPkgs."product-profunctors" or ((hsPkgs.pkgs-errors).buildDepError "product-profunctors"))
            ];
          buildable = true;
          };
        };
      };
    }