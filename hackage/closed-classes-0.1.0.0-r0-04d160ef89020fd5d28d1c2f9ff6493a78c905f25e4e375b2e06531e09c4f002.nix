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
      specVersion = "2.4";
      identifier = { name = "closed-classes"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "© 2021 Anthony Vandikas";
      maintainer = "yellpika@gmail.com";
      author = "Anthony Vandikas";
      homepage = "https://github.com/YellPika/closed-classes";
      url = "";
      synopsis = "Closed type class declarations";
      description = "See \"Data.Class.Closed\" for explanation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
    };
  }