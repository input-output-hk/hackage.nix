{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { debug = false; documentation = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "Referees"; version = "0.0.0"; };
      license = "GPL-3.0-only";
      copyright = "(c) Pablo Couto 2014";
      maintainer = "Pablo Couto <pablo@infty.in>";
      author = "Pablo Couto <pablo@infty.in>";
      homepage = "https://github.com/pablocouto/Referees";
      url = "";
      synopsis = "A utility for computing distributions of material to review among reviewers.";
      description = "A utility for computing distributions of material to review among reviewers.\n@Referees@ takes into consideration the areas of expertise of the referees,\nthe number of items that they accept for review, the languages they\nunderstand, and the minimum and maximum number of copies we may want to\ndistribute per each item to review.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."matrix" or ((hsPkgs.pkgs-errors).buildDepError "matrix"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."cassava" or ((hsPkgs.pkgs-errors).buildDepError "cassava"))
          (hsPkgs."MissingH" or ((hsPkgs.pkgs-errors).buildDepError "MissingH"))
          (hsPkgs."glpk-hs" or ((hsPkgs.pkgs-errors).buildDepError "glpk-hs"))
          ] ++ (pkgs.lib).optional (flags.documentation) (hsPkgs."hscolour" or ((hsPkgs.pkgs-errors).buildDepError "hscolour"));
        buildable = true;
        };
      exes = {
        "referees" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cond" or ((hsPkgs.pkgs-errors).buildDepError "cond"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."Referees" or ((hsPkgs.pkgs-errors).buildDepError "Referees"))
            ] ++ (pkgs.lib).optional (flags.documentation) (hsPkgs."hscolour" or ((hsPkgs.pkgs-errors).buildDepError "hscolour"));
          buildable = true;
          };
        };
      };
    }