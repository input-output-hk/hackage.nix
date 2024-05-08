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
      identifier = { name = "di-wai"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Renzo Carbonara 2024";
      maintainer = "renλren.zone";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/di";
      url = "";
      synopsis = "Di logging for WAI requests and responses";
      description = "Di logging for WAI requests and responses";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
          (hsPkgs."df1-wai" or (errorHandler.buildDepError "df1-wai"))
          (hsPkgs."di-df1" or (errorHandler.buildDepError "di-df1"))
          (hsPkgs."vault" or (errorHandler.buildDepError "vault"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
        ];
        buildable = true;
      };
    };
  }