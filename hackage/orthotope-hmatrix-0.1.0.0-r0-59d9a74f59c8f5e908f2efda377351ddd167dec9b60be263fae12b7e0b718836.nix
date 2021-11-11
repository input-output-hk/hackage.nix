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
      identifier = { name = "orthotope-hmatrix"; version = "0.1.0.0"; };
      license = "LicenseRef-Apache";
      copyright = "2021 Lennart Augustsson";
      maintainer = "lennart@augustsson.net";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Some algoritms from hmatrix";
      description = "Some algoritms from hmatrix";
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