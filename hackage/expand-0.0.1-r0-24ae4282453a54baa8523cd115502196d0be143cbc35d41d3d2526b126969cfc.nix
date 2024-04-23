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
      identifier = { name = "expand"; version = "0.0.1"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "jaccokrijnen@gmail.com";
      author = "Jacco Krijnen";
      homepage = "";
      url = "";
      synopsis = "Extensible Pandoc            ";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."murder" or (errorHandler.buildDepError "murder"))
          (hsPkgs."uu-parsinglib" or (errorHandler.buildDepError "uu-parsinglib"))
          (hsPkgs."AspectAG" or (errorHandler.buildDepError "AspectAG"))
          (hsPkgs."HList" or (errorHandler.buildDepError "HList"))
        ];
        buildable = true;
      };
    };
  }