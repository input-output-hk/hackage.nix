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
    flags = { buildsampleprograms = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "nonlinear-optimization-ad"; version = "0.2.1"; };
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
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
        ];
        buildable = true;
      };
      exes = {
        "LinearRegression" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."csv" or (errorHandler.buildDepError "csv"))
            (hsPkgs."nonlinear-optimization-ad" or (errorHandler.buildDepError "nonlinear-optimization-ad"))
          ];
          buildable = if !flags.buildsampleprograms then false else true;
        };
      };
    };
  }