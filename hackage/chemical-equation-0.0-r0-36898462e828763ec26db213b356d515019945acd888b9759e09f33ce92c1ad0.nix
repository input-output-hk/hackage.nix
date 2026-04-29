{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { flint = false; lapack = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "chemical-equation"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@henning-thielemann.de";
      author = "Henning Thielemann";
      homepage = "https://hub.darcs.net/thielema/chemical-equation";
      url = "";
      synopsis = "Balance chemical equations";
      description = "Balance coefficients of chemical equations.\nYou only give the list of reactants,\nthe program will automatically find out\non which side of the equation the reactants are placed.\nHowever, the first reactant is always placed on the left side\nand the order of all reactants is preserved as good as possible.\n\n> $ balance-chemical-equation C O2 CO2\n> C + O2 <=> CO2\n\n> $ balance-chemical-equation CH4 O2 CO2 H2O\n> CH4 + 2 O2 <=> CO2 + 2 H2O\n\n> $ balance-chemical-equation C8H18 O2 CO2 H2O\n> 2 C8H18 + 25 O2 <=> 16 CO2 + 18 H2O\n\n> $ balance-chemical-equation N2 H2 NH3\n> N2 + 3 H2 <=> 2 NH3\n\n> $ balance-chemical-equation HCl NaOH NaCl H2O\n> HCl + NaOH <=> NaCl + H2O\n\nIf you mix multiple reactions\nthen the program takes them apart, again.\nHowever, the resulting partial reactions may not be chemically sensible.\n\n> $ balance-chemical-equation C CH4 O2 CO2 H2O\n> 2 C + 2 H2O <=> CH4 + CO2\n> C + O2 <=> CO2\n\nThe program knows nothing about chemistry and has no dictionary of elements.\nIt cannot check whether the reactants are existing chemical substances\nor whether the reactions can happen in the real world.\nIt accepts any capital letter followed\nby many lower-case letters as element symbols.\n\nMathematically speaking, balancing a reaction equation\nmeans computing the nullspace of an integer matrix,\nwhere all coefficients in the nullspace vectors are in turn integers.\nThe matrix has a row for every element and a column for every reactant\nand every cell contains\nthe multiplicity of an element in the according reactant.\nOur solver transforms this matrix to Reduced Row Echelon form,\na generalization of Gauss elimination.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "balance-chemical-equation" = {
          depends = [
            (hsPkgs."numeric-quest" or (errorHandler.buildDepError "numeric-quest"))
            (hsPkgs."shell-utility" or (errorHandler.buildDepError "shell-utility"))
            (hsPkgs."comfort-array" or (errorHandler.buildDepError "comfort-array"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."non-empty" or (errorHandler.buildDepError "non-empty"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
        "balance-chemical-equation-flint" = {
          depends = pkgs.lib.optionals (flags.flint) [
            (hsPkgs."shell-utility" or (errorHandler.buildDepError "shell-utility"))
            (hsPkgs."comfort-array" or (errorHandler.buildDepError "comfort-array"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."non-empty" or (errorHandler.buildDepError "non-empty"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          pkgconfig = [
            (pkgconfPkgs."flint" or (errorHandler.pkgConfDepError "flint"))
          ];
          buildable = if flags.flint then true else false;
        };
        "balance-chemical-equation-lapack" = {
          depends = pkgs.lib.optionals (flags.lapack) [
            (hsPkgs."shell-utility" or (errorHandler.buildDepError "shell-utility"))
            (hsPkgs."lapack" or (errorHandler.buildDepError "lapack"))
            (hsPkgs."netlib-ffi" or (errorHandler.buildDepError "netlib-ffi"))
            (hsPkgs."comfort-array" or (errorHandler.buildDepError "comfort-array"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."non-empty" or (errorHandler.buildDepError "non-empty"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.lapack then true else false;
        };
      };
    };
  }