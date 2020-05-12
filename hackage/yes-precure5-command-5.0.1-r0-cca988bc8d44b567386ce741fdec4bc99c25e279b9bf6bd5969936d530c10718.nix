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
      specVersion = "1.8";
      identifier = { name = "yes-precure5-command"; version = "5.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "YAMAMOTO Yuji <whosekiteneverfly@gmail.com>";
      author = "YAMAMOTO Yuji";
      homepage = "https://github.com/igrep/yes-precure5-command/";
      url = "";
      synopsis = "Extended yes command to reproduce phrases in Yes! Precure 5";
      description = "Provides extended yes command to reproduce phrases in Yes! Precure 5.\n\nSee <https://github.com/igrep/yes-precure5-command/blob/master/README.mkd> for details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      exes = {
        "yes" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."yes-precure5-command" or (errorHandler.buildDepError "yes-precure5-command"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ];
          buildable = true;
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."yes-precure5-command" or (errorHandler.buildDepError "yes-precure5-command"))
            ];
          buildable = true;
          };
        };
      };
    }