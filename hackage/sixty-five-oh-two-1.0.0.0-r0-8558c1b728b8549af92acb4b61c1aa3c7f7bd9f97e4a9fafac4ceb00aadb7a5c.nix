{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "sixty-five-oh-two"; version = "1.0.0.0"; };
      license = "MIT";
      copyright = "2018 Tyler Limkemann";
      maintainer = "tslimkemann42@gmail.com";
      author = "Tyler Limkemann";
      homepage = "https://github.com/aearnus/sixty-five-oh-two#readme";
      url = "";
      synopsis = "An eDSL for writing 65(C)02 bytecode.";
      description = "An eDSL for writing 65(C)02 bytecode. Please see the README on GitHub at <https://github.com/aearnus/sixty-five-oh-two#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      exes = {
        "sixty-five-oh-two-exe" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."sixty-five-oh-two" or ((hsPkgs.pkgs-errors).buildDepError "sixty-five-oh-two"))
            ];
          buildable = true;
          };
        };
      tests = {
        "sixty-five-oh-two-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."sixty-five-oh-two" or ((hsPkgs.pkgs-errors).buildDepError "sixty-five-oh-two"))
            ];
          buildable = true;
          };
        };
      };
    }