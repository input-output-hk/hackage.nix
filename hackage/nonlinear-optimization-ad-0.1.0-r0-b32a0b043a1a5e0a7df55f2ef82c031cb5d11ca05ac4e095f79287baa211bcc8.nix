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
      identifier = { name = "nonlinear-optimization-ad"; version = "0.1.0"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2013 Masahiro Sakai";
      maintainer = "masahiro.sakai@gmail.com";
      author = "Masahiro Sakai (masahiro.sakai@gmail.com)";
      homepage = "https://github.com/msakai/nonlinear-optimization-ad";
      url = "";
      synopsis = "Wrapper of nonlinear-optimization package for using with AD package";
      description = "Wrapper of nonlinear-optimization package for using with AD package";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."nonlinear-optimization" or (errorHandler.buildDepError "nonlinear-optimization"))
          (hsPkgs."ad" or (errorHandler.buildDepError "ad"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
    };
  }