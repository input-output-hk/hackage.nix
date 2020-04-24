{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "clr-bindings"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Tim Matthews";
      maintainer = "pepeiborra@gmail.com";
      author = "Tim Matthews";
      homepage = "https://gitlab.com/tim-m89/clr-haskell/tree/master/libs/clr-bindings";
      url = "";
      synopsis = "Glue between clr-host and clr-typed";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."clr-typed" or ((hsPkgs.pkgs-errors).buildDepError "clr-typed"))
          (hsPkgs."clr-host" or ((hsPkgs.pkgs-errors).buildDepError "clr-host"))
          (hsPkgs."clr-marshal" or ((hsPkgs.pkgs-errors).buildDepError "clr-marshal"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."pipes" or ((hsPkgs.pkgs-errors).buildDepError "pipes"))
          ];
        buildable = true;
        };
      tests = {
        "clr-bindings-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."clr-bindings" or ((hsPkgs.pkgs-errors).buildDepError "clr-bindings"))
            ];
          buildable = true;
          };
        };
      };
    }