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
    flags = { onlygsl = false; disable-default-paths = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "hmatrix-gsl"; version = "0.19.0.0"; };
      license = "GPL-3.0-only";
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
        libs = (((pkgs.lib).optional (system.isOsx) (pkgs."gsl" or (errorHandler.sysDepError "gsl")) ++ (pkgs.lib).optional (system.isFreebsd) (pkgs."gsl" or (errorHandler.sysDepError "gsl"))) ++ (pkgs.lib).optional (system.isWindows) (pkgs."gsl-0" or (errorHandler.sysDepError "gsl-0"))) ++ (pkgs.lib).optional (flags.onlygsl) (pkgs."gsl" or (errorHandler.sysDepError "gsl"));
        frameworks = (pkgs.lib).optional (system.isOsx) (pkgs."Accelerate" or (errorHandler.sysDepError "Accelerate"));
        pkgconfig = (pkgs.lib).optional (!flags.onlygsl) (pkgconfPkgs."gsl" or (errorHandler.pkgConfDepError "gsl"));
        buildable = true;
        };
      };
    }