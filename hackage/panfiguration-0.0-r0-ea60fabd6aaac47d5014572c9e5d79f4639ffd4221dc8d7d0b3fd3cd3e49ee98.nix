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
      identifier = { name = "panfiguration"; version = "0.0"; };
      license = "Apache-2.0";
      copyright = "Copyright (c) 2022 Fumiaki Kinoshita";
      maintainer = "fumiaki.kinoshita@herp.co.jp";
      author = "Fumiaki Kinoshita";
      homepage = "";
      url = "";
      synopsis = "Merge environment variables and command line options generically";
      description = "See README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."barbies" or (errorHandler.buildDepError "barbies"))
          (hsPkgs."barbies-th" or (errorHandler.buildDepError "barbies-th"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."barbies-th" or (errorHandler.buildDepError "barbies-th"))
            (hsPkgs."panfiguration" or (errorHandler.buildDepError "panfiguration"))
          ];
          buildable = true;
        };
      };
    };
  }