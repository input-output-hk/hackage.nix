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
      identifier = { name = "hmatrix-repa"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) A.V.H. McPhail 2011";
      maintainer = "haskell.vivian.mcphail <at> gmail <dot> com";
      author = "Vivian McPhail";
      homepage = "http://code.haskell.org/hmatrix-repa";
      url = "";
      synopsis = "Adaptors for interoperability between hmatrix and repa";
      description = "Adaptors for interoperability between hmatrix and repa";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."repa" or (errorHandler.buildDepError "repa"))
          ];
        buildable = true;
        };
      };
    }