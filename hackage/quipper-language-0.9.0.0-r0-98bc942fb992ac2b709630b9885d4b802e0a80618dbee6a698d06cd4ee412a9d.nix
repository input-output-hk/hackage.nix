{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "quipper-language"; version = "0.9.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011-2019. All rights reserved.";
      maintainer = "selinger@mathstat.dal.ca";
      author = "Alexander S. Green, Peter LeFanu Lumsdaine,\nNeil J. Ross, Peter Selinger, Benoît Valiron";
      homepage = "http://www.mathstat.dal.ca/~selinger/quipper/";
      url = "";
      synopsis = "Quipper, an embedded functional programming language for quantum\ncomputation.";
      description = "Quipper is an embedded functional programming language for quantum\ncomputation. The quipper-language package provides the Quipper\nlanguage. You might also want quipper-libraries to get the Quipper\nlibraries, quipper-tools to get some standalone tools, and\nquipper-algorithms to get a collection of pre-implemented quantum\nalgorithms.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or ((hsPkgs.pkgs-errors).buildToolDepError "base")))
        (hsPkgs.buildPackages.superdoc or (pkgs.buildPackages.superdoc or ((hsPkgs.pkgs-errors).buildToolDepError "superdoc")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."easyrender" or ((hsPkgs.pkgs-errors).buildDepError "easyrender"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."quipper-utils" or ((hsPkgs.pkgs-errors).buildDepError "quipper-utils"))
          (hsPkgs."fail" or ((hsPkgs.pkgs-errors).buildDepError "fail"))
          ];
        buildable = true;
        };
      exes = {
        "quipper" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."quipper-language" or ((hsPkgs.pkgs-errors).buildDepError "quipper-language"))
            ];
          buildable = true;
          };
        "quipperi" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."quipper-language" or ((hsPkgs.pkgs-errors).buildDepError "quipper-language"))
            ];
          buildable = true;
          };
        "quipperdoc" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."quipper-language" or ((hsPkgs.pkgs-errors).buildDepError "quipper-language"))
            ];
          buildable = true;
          };
        "quipper-pp" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }