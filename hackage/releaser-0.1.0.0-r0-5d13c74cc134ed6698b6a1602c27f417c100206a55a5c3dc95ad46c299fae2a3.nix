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
      identifier = { name = "releaser"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "domen@dev.si";
      author = "Domen Kozar";
      homepage = "";
      url = "";
      synopsis = "Automation of Haskell package release process";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."regex-pcre" or (errorHandler.buildDepError "regex-pcre"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."pretty-terminal" or (errorHandler.buildDepError "pretty-terminal"))
          ];
        buildable = true;
        };
      exes = {
        "releaser" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."releaser" or (errorHandler.buildDepError "releaser"))
            ];
          buildable = true;
          };
        };
      };
    }