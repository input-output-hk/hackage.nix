{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = { name = "zeno"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "William Sonnex <will@sonnex.name>";
      author = "William Sonnex";
      homepage = "";
      url = "";
      synopsis = "An automated proof system for Haskell programs";
      description = "Zeno is an automated proof system for Haskell program\nproperties; developed at Imperial College London by\nWilliam Sonnex, Sophia Drossopoulou and Susan Eisenbach.\nIt aims to solve the general problem of equality between\ntwo Haskell terms, for any input value.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "zeno" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
            (hsPkgs."ghc-paths" or ((hsPkgs.pkgs-errors).buildDepError "ghc-paths"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
            ];
          buildable = true;
          };
        };
      };
    }