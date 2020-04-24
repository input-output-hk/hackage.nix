{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "partage"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2015-2016 Jakub Waszczuk";
      maintainer = "waszczuk.kuba@gmail.com";
      author = "Jakub Waszczuk";
      homepage = "https://github.com/kawu/partage";
      url = "";
      synopsis = "Parsing factorized";
      description = "The library implements an Earley-style, bottom-up parser for tree adjoining\ngrammars (TAGs) with special focus on structure (and, hence, computation) sharing.\n\nTwo particular flavours of structure sharing are currently implemented:\n\n* Subtrees common to different elementary trees are shared amongst them.\nThe input TAG, which can be seen as a set of elementary (initial and auxiliary)\ngrammar trees, is in fact transformed into an equivalent DAG.\n\n* Flat production grammar rules representing the individual parts of the DAG\nare then compressed in the form of a minimal FSA. Other forms of\ncompression are also provided by the library (e.g. prefix tree).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."pipes" or ((hsPkgs.pkgs-errors).buildDepError "pipes"))
          (hsPkgs."PSQueue" or ((hsPkgs.pkgs-errors).buildDepError "PSQueue"))
          (hsPkgs."data-partition" or ((hsPkgs.pkgs-errors).buildDepError "data-partition"))
          (hsPkgs."mmorph" or ((hsPkgs.pkgs-errors).buildDepError "mmorph"))
          (hsPkgs."dawg-ord" or ((hsPkgs.pkgs-errors).buildDepError "dawg-ord"))
          (hsPkgs."data-lens-light" or ((hsPkgs.pkgs-errors).buildDepError "data-lens-light"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."partage" or ((hsPkgs.pkgs-errors).buildDepError "partage"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            ];
          buildable = true;
          };
        };
      };
    }