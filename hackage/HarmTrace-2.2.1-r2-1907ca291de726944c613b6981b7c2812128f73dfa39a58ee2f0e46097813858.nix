{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "HarmTrace"; version = "2.2.1"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2010--2013 Universiteit Utrecht,\n2012--2013 University of Oxford,\n2017 Chordify BV";
      maintainer = "haskelldevelopers@chordify.net";
      author = "W. Bas de Haas and Jose Pedro Magalhaes";
      homepage = "https://github.com/haas/harmtrace";
      url = "";
      synopsis = "Harmony Analysis and Retrieval of Music";
      description = "HarmTrace: Harmony Analysis and Retrieval of Music\nwith Type-level Representations of Abstract\nChords Entities\n\nWe present HarmTrace, a system\nfor automatically analysing the harmony of music\nsequences. HarmTrace is described in the paper:\n\n* Jose Pedro Magalhaes and W. Bas de Haas.\n/Experience Report: Functional Modelling of Musical Harmony./\nInternational Conference on Functional Programming,\n2011.\n<http://dreixel.net/research/pdf/fmmh.pdf>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "harmtrace" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
            (hsPkgs."Diff" or ((hsPkgs.pkgs-errors).buildDepError "Diff"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."uu-parsinglib" or ((hsPkgs.pkgs-errors).buildDepError "uu-parsinglib"))
            (hsPkgs."ListLike" or ((hsPkgs.pkgs-errors).buildDepError "ListLike"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."matrix" or ((hsPkgs.pkgs-errors).buildDepError "matrix"))
            (hsPkgs."sox" or ((hsPkgs.pkgs-errors).buildDepError "sox"))
            (hsPkgs."instant-generics" or ((hsPkgs.pkgs-errors).buildDepError "instant-generics"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."HarmTrace-Base" or ((hsPkgs.pkgs-errors).buildDepError "HarmTrace-Base"))
            (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
            ];
          buildable = true;
          };
        };
      };
    }