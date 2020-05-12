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
      identifier = { name = "hmatrix-svdlibc"; version = "0.3.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Ben Gamari";
      maintainer = "bgamari.foss@gmail.com";
      author = "Ben Gamari";
      homepage = "http://github.com/bgamari/hmatrix-svdlibc";
      url = "";
      synopsis = "SVDLIBC bindings for HMatrix";
      description = "Bindings for the sparse singular value decomposition\nprovided by SVDLIBC.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          ];
        buildable = true;
        };
      exes = {
        "svdlibc-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            ];
          buildable = true;
          };
        };
      };
    }