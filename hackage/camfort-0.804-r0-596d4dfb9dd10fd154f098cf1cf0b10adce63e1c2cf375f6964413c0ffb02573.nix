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
      specVersion = "1.18";
      identifier = { name = "camfort"; version = "0.804"; };
      license = "Apache-2.0";
      copyright = "2012-2016 University of Cambridge";
      maintainer = "dom.orchard@gmail.com";
      author = "Dominic Orchard, Matthew Danish, Mistral Contrastin, Andrew Rice, Oleg Oshmyan";
      homepage = "";
      url = "";
      synopsis = "CamFort - Cambridge Fortran infrastructure";
      description = "CamFort is a tool for the analysis, transformation, verification of Fortran code.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."generic-deriving" or (errorHandler.buildDepError "generic-deriving"))
          (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
          (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
          (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
          (hsPkgs."haskell-src" or (errorHandler.buildDepError "haskell-src"))
          (hsPkgs."syz" or (errorHandler.buildDepError "syz"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."language-fortran" or (errorHandler.buildDepError "language-fortran"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."GenericPretty" or (errorHandler.buildDepError "GenericPretty"))
          (hsPkgs."fortran-src" or (errorHandler.buildDepError "fortran-src"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex or (errorHandler.buildToolDepError "alex")))
          (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy or (errorHandler.buildToolDepError "happy")))
          ];
        buildable = true;
        };
      exes = {
        "camfort" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."generic-deriving" or (errorHandler.buildDepError "generic-deriving"))
            (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
            (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
            (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
            (hsPkgs."haskell-src" or (errorHandler.buildDepError "haskell-src"))
            (hsPkgs."syz" or (errorHandler.buildDepError "syz"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."language-fortran" or (errorHandler.buildDepError "language-fortran"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."GenericPretty" or (errorHandler.buildDepError "GenericPretty"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."fortran-src" or (errorHandler.buildDepError "fortran-src"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."fortran-src" or (errorHandler.buildDepError "fortran-src"))
            (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."camfort" or (errorHandler.buildDepError "camfort"))
            ];
          buildable = true;
          };
        };
      };
    }