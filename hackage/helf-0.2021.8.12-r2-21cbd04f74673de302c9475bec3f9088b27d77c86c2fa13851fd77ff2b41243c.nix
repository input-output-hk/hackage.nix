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
      specVersion = "1.10";
      identifier = { name = "helf"; version = "0.2021.8.12"; };
      license = "MIT";
      copyright = "";
      maintainer = "Andreas Abel <andreas.abel@ifi.lmu.de>";
      author = "Andreas Abel and Nicolai Kraus";
      homepage = "http://www2.tcs.ifi.lmu.de/~abel/projects.html#helf";
      url = "";
      synopsis = "Typechecking terms of the Edinburgh Logical Framework (LF).";
      description = "HELF = Haskell implementation of the Edinburgh Logical Framework\n\nHELF implements only a subset of the Twelf syntax and functionality.\nIt type-checks LF definitions, but does not do type reconstruction.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "helf" = {
          depends = [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.happy.components.exes.happy or (pkgs.buildPackages.happy or (errorHandler.buildToolDepError "happy:happy")))
            (hsPkgs.buildPackages.alex.components.exes.alex or (pkgs.buildPackages.alex or (errorHandler.buildToolDepError "alex:alex")))
            ];
          buildable = true;
          };
        };
      };
    }