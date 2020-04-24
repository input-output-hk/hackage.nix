{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "HarmTrace-Base"; version = "1.4.0.1"; };
      license = "LGPL-3.0-only";
      copyright = "(c) 2012--2014 W. Bas de Haas and Jose Pedro Magalhaes,\nMultiphonyx Holding BV";
      maintainer = "bas@chordify.net, dreixel@chordify.net";
      author = "W. Bas de Haas and Jose Pedro Magalhaes";
      homepage = "https://bitbucket.org/bash/harmtrace-base";
      url = "";
      synopsis = "Parsing and unambiguously representing musical chords.";
      description = "HarmTrace: Harmony Analysis and Retrieval of Music\nwith Type-level Representations of Abstract\nChords Entities\n\nWe present HarmTrace-Base, a library for parsing and\nunambiguously representing musical chords.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."uu-parsinglib" or ((hsPkgs.pkgs-errors).buildDepError "uu-parsinglib"))
          (hsPkgs."ListLike" or ((hsPkgs.pkgs-errors).buildDepError "ListLike"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "test-harmtrace-base" = {
          depends = [
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."HarmTrace-Base" or ((hsPkgs.pkgs-errors).buildDepError "HarmTrace-Base"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."uu-parsinglib" or ((hsPkgs.pkgs-errors).buildDepError "uu-parsinglib"))
            (hsPkgs."ListLike" or ((hsPkgs.pkgs-errors).buildDepError "ListLike"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }