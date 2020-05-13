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
      identifier = { name = "uniprot-kb"; version = "0.1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Pavel Yakovlev";
      maintainer = "pavel@yakovlev.me";
      author = "Pavel Yakovlev";
      homepage = "https://github.com/biocad/uniprot-kb#readme";
      url = "";
      synopsis = "UniProt-KB format parser";
      description = "Specification implementation of https://web.expasy.org/docs/userman.html";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "uniprot-kb-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."neat-interpolation" or (errorHandler.buildDepError "neat-interpolation"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."uniprot-kb" or (errorHandler.buildDepError "uniprot-kb"))
            ];
          buildable = true;
          };
        };
      };
    }