{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "reflex-basic-host"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2019, Commonwealth Scientific and Industrial Research Organisation (CSIRO) ABN 41 687 119 230.";
      maintainer = "dave.laing.80@gmail.com, jack.kelly@data61.csiro.au";
      author = "Dave Laing";
      homepage = "https://github.com/qfpl/reflex-basic-host/";
      url = "";
      synopsis = "A basic `reflex` host for backend work";
      description = "<<https://raw.githubusercontent.com/qfpl/assets/master/data61-transparent-bg.png>>\n\nreflex-basic-host provides a basic Reflex host for backend work. It\nprovides instances for most of the important Reflex typeclasses.\n\n@Reflex.Host.Basic.basicHostWithQuit@ is the main entry point for\nrunning FRP code. Use the @TriggerEvent@ instance to construct\n@Event@s and control when they fire firings, and use the\n@PerformEvent@ instance to take actions in response to @Event@\nfirings.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."dependent-map" or ((hsPkgs.pkgs-errors).buildDepError "dependent-map"))
          (hsPkgs."dependent-sum" or ((hsPkgs.pkgs-errors).buildDepError "dependent-sum"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."ref-tf" or ((hsPkgs.pkgs-errors).buildDepError "ref-tf"))
          (hsPkgs."reflex" or ((hsPkgs.pkgs-errors).buildDepError "reflex"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          ];
        buildable = true;
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."reflex" or ((hsPkgs.pkgs-errors).buildDepError "reflex"))
            (hsPkgs."reflex-basic-host" or ((hsPkgs.pkgs-errors).buildDepError "reflex-basic-host"))
            ];
          buildable = true;
          };
        "counter" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."reflex" or ((hsPkgs.pkgs-errors).buildDepError "reflex"))
            (hsPkgs."reflex-basic-host" or ((hsPkgs.pkgs-errors).buildDepError "reflex-basic-host"))
            ];
          buildable = true;
          };
        "multithread" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."ref-tf" or ((hsPkgs.pkgs-errors).buildDepError "ref-tf"))
            (hsPkgs."reflex" or ((hsPkgs.pkgs-errors).buildDepError "reflex"))
            (hsPkgs."reflex-basic-host" or ((hsPkgs.pkgs-errors).buildDepError "reflex-basic-host"))
            (hsPkgs."witherable" or ((hsPkgs.pkgs-errors).buildDepError "witherable"))
            ];
          buildable = true;
          };
        };
      };
    }