{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "funcons-intgen"; version = "0.2.0.1"; };
      license = "MIT";
      copyright = "Copyright (C) 2015 L. Thomas van Binsbergen and Neil Schulthorpe";
      maintainer = "L. Thomas van Binsbergen <ltvanbinsbergen@acm.org>";
      author = "L. Thomas van Binsbergen <ltvanbinsbergen@acm.org>, Neil Sculthorpe <n.a.sculthorpe@swansea.ac.uk>";
      homepage = "http://plancomps.org";
      url = "";
      synopsis = "Generate Funcons interpreters from CBS description files";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "cbsc" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            (hsPkgs."uu-cco" or ((hsPkgs.pkgs-errors).buildDepError "uu-cco"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."funcons-tools" or ((hsPkgs.pkgs-errors).buildDepError "funcons-tools"))
            (hsPkgs."gll" or ((hsPkgs.pkgs-errors).buildDepError "gll"))
            (hsPkgs."regex-applicative" or ((hsPkgs.pkgs-errors).buildDepError "regex-applicative"))
            (hsPkgs."iml-tools" or ((hsPkgs.pkgs-errors).buildDepError "iml-tools"))
            (hsPkgs."funcons-values" or ((hsPkgs.pkgs-errors).buildDepError "funcons-values"))
            ];
          buildable = true;
          };
        };
      };
    }