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
      identifier = { name = "language-nix"; version = "2.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "simons@cryp.to";
      author = "Peter Simons";
      homepage = "https://github.com/peti/language-nix#readme";
      url = "";
      synopsis = "Data types and functions to represent the Nix language";
      description = "Data types and useful functions to represent and manipulate the Nix\nlanguage.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."parsec-class" or (errorHandler.buildDepError "parsec-class"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          ];
        buildable = true;
        };
      };
    }