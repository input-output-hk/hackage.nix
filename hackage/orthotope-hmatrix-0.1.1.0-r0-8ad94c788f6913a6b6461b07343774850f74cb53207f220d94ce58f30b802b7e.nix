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
      specVersion = "1.10";
      identifier = { name = "orthotope-hmatrix"; version = "0.1.1.0"; };
      license = "LicenseRef-Apache";
      copyright = "2021 Lennart Augustsson";
      maintainer = "lennart@augustsson.net";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Some algorithms from hmatrix";
      description = "Some algorithms from hmatrix, such as matrix multiply.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."orthotope" or (errorHandler.buildDepError "orthotope"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          ];
        buildable = true;
        };
      };
    }