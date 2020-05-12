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
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hVOIDP"; version = "1.0.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Qi Qi <qiqi789@gmail.com>";
      author = "Qi Qi <qiqi789@gmail.com>";
      homepage = "http://dslsrv4.cs.missouri.edu/~qqbm9";
      url = "";
      synopsis = "Optimal variable selection in chain graphical model.";
      description = "An implementation of the VOIDP algorithm that selects the optimal observations in chain graphical models.\n\nReferences:\n\n* Andreas Krause and Carlos Guestrin. 2009. Optimal value of information in graphical models. J. Artif. Int. Res. 35, 1 (July 2009), 557-591.\n\n* Qi Qi; Yi Shang; Hongchi Shi; , \"An improved algorithm for optimal subset selection in chain graphical models,\" Evolutionary Computation (CEC), 2010 IEEE Congress on , vol., no., pp.1-6, 18-23 July 2010";
      buildType = "Simple";
      };
    components = {
      "library" = { buildable = true; };
      exes = {
        "hVOIDP" = {
          depends = [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          libs = [
            (pkgs."lapack" or (errorHandler.sysDepError "lapack"))
            (pkgs."blas" or (errorHandler.sysDepError "blas"))
            ];
          buildable = true;
          };
        };
      };
    }