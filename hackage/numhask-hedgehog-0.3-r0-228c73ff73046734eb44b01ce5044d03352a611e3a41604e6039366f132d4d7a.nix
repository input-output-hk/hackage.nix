{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "numhask-hedgehog"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "Tony Day";
      maintainer = "tonyday567@gmail.com";
      author = "Tony Day";
      homepage = "https://github.com/tonyday567/numhask#readme";
      url = "";
      synopsis = "Laws and tests for numhask";
      description = "Laws and tests for numhask.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog"))
          (hsPkgs."numhask" or ((hsPkgs.pkgs-errors).buildDepError "numhask"))
          (hsPkgs."numhask-space" or ((hsPkgs.pkgs-errors).buildDepError "numhask-space"))
          (hsPkgs."numhask-prelude" or ((hsPkgs.pkgs-errors).buildDepError "numhask-prelude"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog"))
            (hsPkgs."numhask" or ((hsPkgs.pkgs-errors).buildDepError "numhask"))
            (hsPkgs."numhask-prelude" or ((hsPkgs.pkgs-errors).buildDepError "numhask-prelude"))
            (hsPkgs."numhask-hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "numhask-hedgehog"))
            ];
          buildable = true;
          };
        };
      };
    }