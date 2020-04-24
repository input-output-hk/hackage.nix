{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "funcons-tools"; version = "0.2.0.7"; };
      license = "MIT";
      copyright = "Copyright (C) 2015 L. Thomas van Binsbergen and Neil Sculthorpe";
      maintainer = "L. Thomas van Binsbergen <ltvanbinsbergen@acm.org>";
      author = "L. Thomas van Binsbergen and Neil Sculthorpe";
      homepage = "http://plancomps.org";
      url = "";
      synopsis = "A modular interpreter for executing funcons";
      description = "The PLanCompS project (<http://plancomps.org>) has developed a component-based approach to formal semantics.\nThe semantics of a language is defined by translating its constructs to combinations\nof `fundamental constructs' called /funcons/.\n\nThis package provides a collection of highly reusable funcons in \"Funcons.Core\",\nan interpreter for these funcons and means for defining new funcons.\n\nThe executable provided by this package is an interpreter for running terms\nconstructed from the collection of funcons provided by \"Funcons.Core\".\nHow this executable is used is explained in \"Funcons.Tools\".\n\nAdditional funcons can be defined with the helper functions provided by\n\"Funcons.EDSL\". The module \"Funcons.Tools\" provides functions for creating\nexecutables by extending the main interpreter with additional funcons.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."bv" or ((hsPkgs.pkgs-errors).buildDepError "bv"))
          (hsPkgs."multiset" or ((hsPkgs.pkgs-errors).buildDepError "multiset"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."gll" or ((hsPkgs.pkgs-errors).buildDepError "gll"))
          (hsPkgs."TypeCompose" or ((hsPkgs.pkgs-errors).buildDepError "TypeCompose"))
          (hsPkgs."regex-applicative" or ((hsPkgs.pkgs-errors).buildDepError "regex-applicative"))
          (hsPkgs."random-strings" or ((hsPkgs.pkgs-errors).buildDepError "random-strings"))
          (hsPkgs."funcons-values" or ((hsPkgs.pkgs-errors).buildDepError "funcons-values"))
          ];
        buildable = true;
        };
      exes = {
        "runfct" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."bv" or ((hsPkgs.pkgs-errors).buildDepError "bv"))
            (hsPkgs."funcons-tools" or ((hsPkgs.pkgs-errors).buildDepError "funcons-tools"))
            (hsPkgs."multiset" or ((hsPkgs.pkgs-errors).buildDepError "multiset"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."gll" or ((hsPkgs.pkgs-errors).buildDepError "gll"))
            (hsPkgs."TypeCompose" or ((hsPkgs.pkgs-errors).buildDepError "TypeCompose"))
            (hsPkgs."regex-applicative" or ((hsPkgs.pkgs-errors).buildDepError "regex-applicative"))
            (hsPkgs."random-strings" or ((hsPkgs.pkgs-errors).buildDepError "random-strings"))
            (hsPkgs."funcons-values" or ((hsPkgs.pkgs-errors).buildDepError "funcons-values"))
            ];
          buildable = true;
          };
        };
      };
    }