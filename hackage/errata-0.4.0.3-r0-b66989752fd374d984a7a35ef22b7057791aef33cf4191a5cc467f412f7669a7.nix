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
    flags = { usewcwidth = false; };
    package = {
      specVersion = "2.4";
      identifier = { name = "errata"; version = "0.4.0.3"; };
      license = "MIT";
      copyright = "(c) 2020- comp";
      maintainer = "onecomputer00@gmail.com";
      author = "comp";
      homepage = "https://github.com/1Computer1/errata";
      url = "";
      synopsis = "Source code error pretty printing";
      description = "An extremely customizable error pretty printer that can handle many kinds of error formatting.\nIt can handle errors that are connected, disconnected, and those spanning multiple lines.\n\nYou can get started by importing the \"Errata\" module.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      exes = {
        "errata-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."errata" or (errorHandler.buildDepError "errata"))
          ];
          buildable = true;
        };
      };
      tests = {
        "errata-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."errata" or (errorHandler.buildDepError "errata"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-golden" or (errorHandler.buildDepError "hspec-golden"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }