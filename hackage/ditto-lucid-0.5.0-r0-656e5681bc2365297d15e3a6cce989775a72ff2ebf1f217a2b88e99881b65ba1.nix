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
      specVersion = "3.0";
      identifier = { name = "ditto-lucid"; version = "0.5.0"; };
      license = "BSD-3-Clause";
      copyright = "2012 Jeremy Shaw, SeeReason Partners LLC,\n2019 Zachary Churchill";
      maintainer = "zacharyachurchill@gmail.com";
      author = "Jeremy Shaw, Zachary Churchill";
      homepage = "https://github.com/goolord/ditto-lucid";
      url = "";
      synopsis = "Add support for using lucid with Ditto";
      description = "Ditto is a library for building and validating forms using applicative\nfunctors. This package adds support for using Ditto with Lucid.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
          (hsPkgs."ditto" or (errorHandler.buildDepError "ditto"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."path-pieces" or (errorHandler.buildDepError "path-pieces"))
        ];
        buildable = true;
      };
    };
  }