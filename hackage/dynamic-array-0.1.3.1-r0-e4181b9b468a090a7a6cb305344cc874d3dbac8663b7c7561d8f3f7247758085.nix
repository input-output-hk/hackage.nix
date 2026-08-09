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
      specVersion = "1.12";
      identifier = { name = "dynamic-array"; version = "0.1.3.1"; };
      license = "MIT";
      copyright = "2018-2021 András Kovács";
      maintainer = "puttamalac@gmail.com";
      author = "András Kovács";
      homepage = "";
      url = "";
      synopsis = "Minimum-overhead mutable dynamic arrays";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."primdata" or (errorHandler.buildDepError "primdata"))
        ];
        buildable = true;
      };
    };
  }