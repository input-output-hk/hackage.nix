{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "safer-file-handles-text"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2010 Bas van Dijk";
      maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
      author = "Bas van Dijk";
      homepage = "";
      url = "";
      synopsis = "Extends safer-file-handles with Text operations";
      description = "Extends @safer-file-handles@ with @Text@ operations";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."regions" or ((hsPkgs.pkgs-errors).buildDepError "regions"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."explicit-iomodes-text" or ((hsPkgs.pkgs-errors).buildDepError "explicit-iomodes-text"))
          (hsPkgs."safer-file-handles" or ((hsPkgs.pkgs-errors).buildDepError "safer-file-handles"))
          ];
        buildable = true;
        };
      };
    }