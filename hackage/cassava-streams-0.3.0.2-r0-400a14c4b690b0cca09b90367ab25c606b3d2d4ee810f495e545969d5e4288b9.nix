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
    flags = { maintainer = false; tutorial = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "cassava-streams"; version = "0.3.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014-2018 Peter Jones";
      maintainer = "Peter Jones <pjones@devalot.com>";
      author = "Peter Jones <pjones@devalot.com>";
      homepage = "https://github.com/pjones/cassava-streams";
      url = "";
      synopsis = "io-streams interface for the cassava CSV library.";
      description = "The cassava-streams library glues togeter the cassava CSV library\nand the io-streams streaming library.\n\nSee the \"System.IO.Streams.Csv.Tutorial\" module for a simple tutorial.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
          (hsPkgs."io-streams" or (errorHandler.buildDepError "io-streams"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      exes = {
        "tutorial" = {
          depends = pkgs.lib.optionals (!!flags.tutorial) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cassava-streams" or (errorHandler.buildDepError "cassava-streams"))
            (hsPkgs."io-streams" or (errorHandler.buildDepError "io-streams"))
          ];
          buildable = if !flags.tutorial then false else true;
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."cassava-streams" or (errorHandler.buildDepError "cassava-streams"))
            (hsPkgs."io-streams" or (errorHandler.buildDepError "io-streams"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
    };
  }