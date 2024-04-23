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
      identifier = { name = "hspec-jenkins"; version = "0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "eagletmt@gmail.com";
      author = "Kohei Suzuki";
      homepage = "https://github.com/worksap-ate/hspec-jenkins";
      url = "";
      synopsis = "Jenkins-friendly XML formatter for Hspec";
      description = "Jenkins-friendly XML formatter for Hspec";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
        ];
        buildable = true;
      };
    };
  }