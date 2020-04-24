{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "regions-monadsfd"; version = "0.3.1.3"; };
      license = "BSD-3-Clause";
      copyright = "2010 Bas van Dijk";
      maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
      author = "Bas van Dijk";
      homepage = "";
      url = "";
      synopsis = "Monads-fd instances for the RegionT monad transformer";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base-unicode-symbols" or ((hsPkgs.pkgs-errors).buildDepError "base-unicode-symbols"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."regions" or ((hsPkgs.pkgs-errors).buildDepError "regions"))
          (hsPkgs."monads-fd" or ((hsPkgs.pkgs-errors).buildDepError "monads-fd"))
          ];
        buildable = true;
        };
      };
    }