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
      specVersion = "2.0";
      identifier = { name = "Spock-api-server"; version = "0.14.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 - 2020 Alexander Thiemann";
      maintainer = "Alexander Thiemann <mail@athiemann.net>";
      author = "Alexander Thiemann <mail@athiemann.net>";
      homepage = "https://www.spock.li";
      url = "";
      synopsis = "Another Haskell web framework for rapid development";
      description = "Server wiring for Spock-api APIs";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Spock-core" or (errorHandler.buildDepError "Spock-core"))
          (hsPkgs."Spock-api" or (errorHandler.buildDepError "Spock-api"))
          (hsPkgs."hvect" or (errorHandler.buildDepError "hvect"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }