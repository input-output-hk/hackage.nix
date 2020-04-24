{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "tagged-transformer"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "2011 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/tagged-transformer";
      url = "";
      synopsis = "Provides newtype wrappers for phantom types to avoid unsafely passing dummy arguments";
      description = "Provides newtype wrappers for phantom types to avoid unsafely passing dummy arguments";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."comonad" or ((hsPkgs.pkgs-errors).buildDepError "comonad"))
          (hsPkgs."distributive" or ((hsPkgs.pkgs-errors).buildDepError "distributive"))
          (hsPkgs."contravariant" or ((hsPkgs.pkgs-errors).buildDepError "contravariant"))
          (hsPkgs."functor-apply" or ((hsPkgs.pkgs-errors).buildDepError "functor-apply"))
          (hsPkgs."comonad-transformers" or ((hsPkgs.pkgs-errors).buildDepError "comonad-transformers"))
          ];
        buildable = true;
        };
      };
    }