{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "reprinter"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "d.a.orchard@kent.ac.uk";
      author = "Dominic Orchard, Harry Clarke";
      homepage = "";
      url = "";
      synopsis = "Scrap Your Reprinter";
      description = "A datatype generic algorithm for layout-preserving refactoring";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          (hsPkgs."uniplate" or ((hsPkgs.pkgs-errors).buildDepError "uniplate"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."syz" or ((hsPkgs.pkgs-errors).buildDepError "syz"))
          ];
        buildable = true;
        };
      };
    }