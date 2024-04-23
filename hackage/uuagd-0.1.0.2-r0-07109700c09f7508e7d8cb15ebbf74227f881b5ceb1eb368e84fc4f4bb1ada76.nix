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
      identifier = { name = "uuagd"; version = "0.1.0.2"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Matthijs Steen <matthijssteen1990@gmail.com>";
      author = "Matthijs Steen <matthijssteen1990@gmail.com>";
      homepage = "https://github.com/matthijssteen/uuagd";
      url = "";
      synopsis = "A debugger for the UUAG system.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
        ];
        buildable = true;
      };
      exes = {
        "uuagd" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
          buildable = true;
        };
      };
    };
  }