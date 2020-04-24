{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "haverer"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "Jonathan M. Lange";
      maintainer = "jml@mumak.net";
      author = "Jonathan M. Lange <jml@mumak.net>";
      homepage = "";
      url = "";
      synopsis = "Implementation of the rules of Love Letter";
      description = "Implementation of the rules of Love Letter";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."random-shuffle" or ((hsPkgs.pkgs-errors).buildDepError "random-shuffle"))
          (hsPkgs."MonadRandom" or ((hsPkgs.pkgs-errors).buildDepError "MonadRandom"))
          (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
          (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
          (hsPkgs."basic-prelude" or ((hsPkgs.pkgs-errors).buildDepError "basic-prelude"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."errors" or ((hsPkgs.pkgs-errors).buildDepError "errors"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      exes = {
        "haverer" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."haverer" or ((hsPkgs.pkgs-errors).buildDepError "haverer"))
            (hsPkgs."basic-prelude" or ((hsPkgs.pkgs-errors).buildDepError "basic-prelude"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."haverer" or ((hsPkgs.pkgs-errors).buildDepError "haverer"))
            (hsPkgs."random-shuffle" or ((hsPkgs.pkgs-errors).buildDepError "random-shuffle"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."basic-prelude" or ((hsPkgs.pkgs-errors).buildDepError "basic-prelude"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."errors" or ((hsPkgs.pkgs-errors).buildDepError "errors"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }