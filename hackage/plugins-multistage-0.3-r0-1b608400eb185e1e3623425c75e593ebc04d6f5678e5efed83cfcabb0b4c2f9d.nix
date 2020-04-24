{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = { name = "plugins-multistage"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012-2014, Anders Persson";
      maintainer = "Anders Persson <anders.cj.persson@gmail.com>";
      author = "Anders Persson <anders.cj.persson@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Dynamic linking for embedded DSLs with staged compilation";
      description = "Dynamic compilation, linking and loading of functions in\nstaged languages.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."plugins" or ((hsPkgs.pkgs-errors).buildDepError "plugins"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."th-expand-syns" or ((hsPkgs.pkgs-errors).buildDepError "th-expand-syns"))
          (hsPkgs."storable-record" or ((hsPkgs.pkgs-errors).buildDepError "storable-record"))
          (hsPkgs."storable-tuple" or ((hsPkgs.pkgs-errors).buildDepError "storable-tuple"))
          ];
        buildable = true;
        };
      tests = {
        "regression" = {
          depends = [
            (hsPkgs."plugins-multistage" or ((hsPkgs.pkgs-errors).buildDepError "plugins-multistage"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-th" or ((hsPkgs.pkgs-errors).buildDepError "tasty-th"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "needforspeed" = {
          depends = [
            (hsPkgs."plugins-multistage" or ((hsPkgs.pkgs-errors).buildDepError "plugins-multistage"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }