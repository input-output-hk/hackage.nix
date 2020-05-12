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
      specVersion = "1.2";
      identifier = { name = "FM-SBLEX"; version = "3.0"; };
      license = "LicenseRef-GPL";
      copyright = "Lars Borin, Markus Forsberg, Aarne Ranta, Free software under GNU General Public License (GPL).";
      maintainer = "Lars Borin <lars.borin@gu.se>, Markus Forsberg <markus.forsberg@gu.se>, Aarne Ranta <aarne@chalmers.se>";
      author = "";
      homepage = "http://spraakbanken.gu.se/eng/research/swefn/fm-sblex";
      url = "";
      synopsis = "A set of computational morphology tools for Swedish diachronic lexicons. ";
      description = "A set of computational morphology tools for Swedish diachronic lexicons. Retrieve up-to-date dictionaries from the homepage.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "saldo" = {
          depends = [
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            ];
          buildable = true;
          };
        "dalin" = {
          depends = [
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            ];
          buildable = true;
          };
        "fsv" = {
          depends = [
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            ];
          buildable = true;
          };
        };
      };
    }