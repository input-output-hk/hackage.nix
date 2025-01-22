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
      specVersion = "3.0";
      identifier = { name = "libtorch-ffi-helper"; version = "2.0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2018 Austin Huang";
      maintainer = "hasktorch@gmail.com";
      author = "Austin Huang";
      homepage = "https://github.com/hasktorch/hasktorch#readme";
      url = "";
      synopsis = "Helpers for integrating libtorch-ffi with Hasktorch.";
      description = "Provide macros and plugins for building libtorch-ffi of hasktorch.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
        ];
        buildable = true;
      };
    };
  }