{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "crjdt-haskell"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Amar Potghan";
      maintainer = "amarpotghan@gmail.com";
      author = "Amar Potghan";
      homepage = "https://github.com/amarpotghan/crjdt-haskell#readme";
      url = "";
      synopsis = "A Conflict-Free Replicated JSON Datatype for Haskell";
      description = "A Conflict-Free Replicated JSON Datatype for Haskell";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."free" or ((hsPkgs.pkgs-errors).buildDepError "free"))
          ];
        buildable = true;
        };
      exes = {
        "examples" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."crjdt-haskell" or ((hsPkgs.pkgs-errors).buildDepError "crjdt-haskell"))
            ];
          buildable = true;
          };
        };
      tests = {
        "crjdt-haskell-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."crjdt-haskell" or ((hsPkgs.pkgs-errors).buildDepError "crjdt-haskell"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog"))
            ];
          buildable = true;
          };
        };
      };
    }