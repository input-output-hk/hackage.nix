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
      specVersion = "1.8";
      identifier = { name = "hmatrix-gsl"; version = "0.16.0.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Alberto Ruiz <aruiz@um.es>";
      author = "Alberto Ruiz";
      homepage = "https://github.com/albertoruiz/hmatrix";
      url = "";
      synopsis = "Numerical computation";
      description = "Purely functional interface to selected numerical computations,\ninternally implemented using GSL.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
        ];
        libs = (pkgs.lib.optional (system.isOsx) (pkgs."gsl" or (errorHandler.sysDepError "gsl")) ++ pkgs.lib.optional (system.isFreebsd) (pkgs."gsl" or (errorHandler.sysDepError "gsl"))) ++ pkgs.lib.optional (system.isWindows) (pkgs."gsl-0" or (errorHandler.sysDepError "gsl-0"));
        frameworks = pkgs.lib.optional (system.isOsx) (pkgs."Accelerate" or (errorHandler.sysDepError "Accelerate"));
        pkgconfig = [
          (pkgconfPkgs."gsl" or (errorHandler.pkgConfDepError "gsl"))
        ];
        buildable = true;
      };
    };
  }