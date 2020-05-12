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
      identifier = { name = "hsignal"; version = "0.1.2.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "haskell.vivian.mcphail <at> gmail <dot> com";
      author = "Vivian McPhail";
      homepage = "http://code.haskell.org/hsignal";
      url = "";
      synopsis = "Signal processing";
      description = "Purely functional interface to signal processing based on hmatrix\n\nProvides data types for manipulating EEG data, including reading from BDF data format files\n\nWhen hmatrix is installed with -fvector, the vector type is Data.Vector.Storable\nfrom the vector package.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."storable-complex" or (errorHandler.buildDepError "storable-complex"))
          (hsPkgs."ghc-binary" or (errorHandler.buildDepError "ghc-binary"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."hmatrix-gsl-stats" or (errorHandler.buildDepError "hmatrix-gsl-stats"))
          (hsPkgs."hstatistics" or (errorHandler.buildDepError "hstatistics"))
          ];
        libs = (pkgs.lib).optional (system.isOsx) (pkgs."gsl" or (errorHandler.sysDepError "gsl"));
        frameworks = (pkgs.lib).optional (system.isOsx) (pkgs."Accelerate" or (errorHandler.sysDepError "Accelerate"));
        buildable = true;
        };
      };
    }