{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "opaleye-trans"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Matthew Wraith";
      maintainer = "wraithm@gmail.com";
      author = "Matthew Wraith";
      homepage = "https://github.com/tomjaguarpaw/haskell-opaleye";
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
          (hsPkgs."transformers-base" or ((hsPkgs.pkgs-errors).buildDepError "transformers-base"))
          (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
          (hsPkgs."opaleye" or ((hsPkgs.pkgs-errors).buildDepError "opaleye"))
          (hsPkgs."postgresql-simple" or ((hsPkgs.pkgs-errors).buildDepError "postgresql-simple"))
          (hsPkgs."product-profunctors" or ((hsPkgs.pkgs-errors).buildDepError "product-profunctors"))
          ];
        buildable = true;
        };
      };
    }