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
    flags = { onlygsl = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hmatrix-gsl-stats"; version = "0.4.1.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) A.V.H. McPhail 2010, 2011, 2013, 2015";
      maintainer = "haskell.vivian.mcphail <at> gmail <dot> com";
      author = "Vivian McPhail";
      homepage = "http://code.haskell.org/hmatrix-gsl-stats";
      url = "";
      synopsis = "GSL Statistics interface";
      description = "Purely functional interface for statistics based on hmatrix and GSL\n\nRelieves the burden of alloc/free routines and is otherwise essentially 1:1\n\nDocumentation can be found at <http://www.gnu.org/software/gsl/manual/>\n\nThe vector type is Data.Vector.Storable from the 'vector' package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."storable-complex" or (errorHandler.buildDepError "storable-complex"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          ];
        libs = (((pkgs.lib).optional (system.isOsx) (pkgs."gsl" or (errorHandler.sysDepError "gsl")) ++ (pkgs.lib).optional (system.isFreebsd) (pkgs."gsl" or (errorHandler.sysDepError "gsl"))) ++ (pkgs.lib).optional (system.isWindows) (pkgs."gsl-0" or (errorHandler.sysDepError "gsl-0"))) ++ (pkgs.lib).optional (flags.onlygsl) (pkgs."gsl" or (errorHandler.sysDepError "gsl"));
        frameworks = (pkgs.lib).optional (system.isOsx) (pkgs."Accelerate" or (errorHandler.sysDepError "Accelerate"));
        pkgconfig = (pkgs.lib).optional (!flags.onlygsl) (pkgconfPkgs."gsl" or (errorHandler.pkgConfDepError "gsl"));
        buildable = true;
        };
      };
    }