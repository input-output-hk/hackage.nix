{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "verifiable-expressions"; version = "0.4.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "bch29@cam.ac.uk";
      author = "Bradley Hardy";
      homepage = "";
      url = "";
      synopsis = "An intermediate language for Hoare logic style verification.";
      description = "A typed intermediate language for Hoare logic style verification. It defines the intermediate language and combinators to interact it.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."sbv" or ((hsPkgs.pkgs-errors).buildDepError "sbv"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."union" or ((hsPkgs.pkgs-errors).buildDepError "union"))
          (hsPkgs."vinyl" or ((hsPkgs.pkgs-errors).buildDepError "vinyl"))
          ];
        buildable = true;
        };
      };
    }