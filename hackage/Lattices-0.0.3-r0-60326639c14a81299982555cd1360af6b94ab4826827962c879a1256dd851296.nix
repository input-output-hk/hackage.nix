{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "Lattices"; version = "0.0.3"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Bart Coppens <kde@bartcoppens.be>";
      author = "Bart Coppens";
      homepage = "";
      url = "";
      synopsis = "A library for lattices";
      description = "A library for lattices, in particular for computing an LLL reduced basis for a lattice and finding a close lattice vector";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."HaskellForMaths" or ((hsPkgs.pkgs-errors).buildDepError "HaskellForMaths"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          ];
        buildable = true;
        };
      tests = {
        "test-all" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HaskellForMaths" or ((hsPkgs.pkgs-errors).buildDepError "HaskellForMaths"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            ];
          buildable = true;
          };
        };
      };
    }