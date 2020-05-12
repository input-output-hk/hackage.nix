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
      specVersion = "1.9";
      identifier = { name = "cabal-file-th"; version = "0.2.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nkpart@gmail.com";
      author = "Nick Partridge";
      homepage = "http://github.com/nkpart/cabal-file-th";
      url = "";
      synopsis = "Template Haskell expressions for reading fields from a project's cabal file.";
      description = "Template Haskell expressions for reading fields from a project's cabal file.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cabal-file-th" or (errorHandler.buildDepError "cabal-file-th"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            ];
          buildable = true;
          };
        };
      };
    }