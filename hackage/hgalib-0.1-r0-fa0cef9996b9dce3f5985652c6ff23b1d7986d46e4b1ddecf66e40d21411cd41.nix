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
      specVersion = "1.2";
      identifier = { name = "hgalib"; version = "0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Kevin Ellis <ellisk@catlin.edu>";
      author = "Kevin Ellis";
      homepage = "";
      url = "";
      synopsis = "Haskell Genetic Algorithm Library";
      description = "Haskell Genetic Algorithm Library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          ];
        buildable = true;
        };
      };
    }