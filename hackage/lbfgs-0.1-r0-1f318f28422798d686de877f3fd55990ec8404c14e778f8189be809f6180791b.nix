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
      identifier = { name = "lbfgs"; version = "0.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Daniël de Kok";
      maintainer = "Daniël de Kok <me@danieldk.eu>, Ian-Woo Kim <ianwookim@gmail.com>";
      author = "Daniël de Kok <me@danieldk.eu>";
      homepage = "";
      url = "";
      synopsis = "L-BFGS optimization";
      description = "Limited memory BFGS solver for non-linear optimization\nproblems.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
    };
  }