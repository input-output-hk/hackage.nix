{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "extrapolate"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Rudy Matela <rudy@matela.com.br>";
      author = "Rudy Matela";
      homepage = "https://github.com/rudymatela/extrapolate#readme";
      url = "";
      synopsis = "generalize counter-examples of test properties";
      description = "Extrapolate is a tool able to provide generalized counter-examples of test\nproperties where irrelevant sub-expressions are replaces with variables.\n\nFor the incorrect property @\\\\xs -> nub xs == (xs::[Int])@:\n\n* @[0,0]@ is a counter-example;\n\n* @x:x:_@ is a generalized counter-example.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."leancheck" or ((hsPkgs.pkgs-errors).buildDepError "leancheck"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."speculate" or ((hsPkgs.pkgs-errors).buildDepError "speculate"))
          (hsPkgs."express" or ((hsPkgs.pkgs-errors).buildDepError "express"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."leancheck" or ((hsPkgs.pkgs-errors).buildDepError "leancheck"))
            (hsPkgs."express" or ((hsPkgs.pkgs-errors).buildDepError "express"))
            (hsPkgs."speculate" or ((hsPkgs.pkgs-errors).buildDepError "speculate"))
            (hsPkgs."extrapolate" or ((hsPkgs.pkgs-errors).buildDepError "extrapolate"))
            ];
          buildable = true;
          };
        "derive" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."leancheck" or ((hsPkgs.pkgs-errors).buildDepError "leancheck"))
            (hsPkgs."express" or ((hsPkgs.pkgs-errors).buildDepError "express"))
            (hsPkgs."speculate" or ((hsPkgs.pkgs-errors).buildDepError "speculate"))
            (hsPkgs."extrapolate" or ((hsPkgs.pkgs-errors).buildDepError "extrapolate"))
            ];
          buildable = true;
          };
        "utils" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."leancheck" or ((hsPkgs.pkgs-errors).buildDepError "leancheck"))
            (hsPkgs."express" or ((hsPkgs.pkgs-errors).buildDepError "express"))
            (hsPkgs."speculate" or ((hsPkgs.pkgs-errors).buildDepError "speculate"))
            (hsPkgs."extrapolate" or ((hsPkgs.pkgs-errors).buildDepError "extrapolate"))
            ];
          buildable = true;
          };
        "step-by-step" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."leancheck" or ((hsPkgs.pkgs-errors).buildDepError "leancheck"))
            (hsPkgs."express" or ((hsPkgs.pkgs-errors).buildDepError "express"))
            (hsPkgs."speculate" or ((hsPkgs.pkgs-errors).buildDepError "speculate"))
            (hsPkgs."extrapolate" or ((hsPkgs.pkgs-errors).buildDepError "extrapolate"))
            ];
          buildable = true;
          };
        };
      };
    }